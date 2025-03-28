// export 'dart:js_interop' hide JS;

//
//
//
//
//

/// An annotation on a JavaScript interop declaration.
///
/// This annotation defines a given library, top-level external declaration, or
/// extension type as a JavaScript interop declaration.
///
/// Specifying [name] customizes the JavaScript name to use, which can be used
/// in the following scenarios:
///
/// - Adding a JavaScript prefix to all the external top-level declarations,
///   static members, and constructors of a library by parameterizing the
///   annotation on the library with [name].
/// - Specifying the JavaScript class to use for external static members and
///   constructors of an interop extension type by parameterizing the annotation
///   on the interop extension type with [name].
/// - Renaming external declarations by parameterizing the annotation on the
///   member with [name].
///
/// In the case where [name] is not specified, the Dart name of the extension
/// type or external declaration is used as the default.
///
/// See https://dart.dev/interop/js-interop/usage#js for more details on how to
/// use this annotation.
///
/// > [!NOTE]
/// > `package:js` exports an `@JS` annotation as well. Unlike that annotation,
/// > this annotation applies to extension types, and will result in more
/// > type-checking for external top-level declarations.
class JS {
  final String? name;
  const JS([this.name]);
}

const _StaticInterop staticInterop = _StaticInterop();

class _StaticInterop {
  const _StaticInterop();
}

extension type JSAny._(Object _jsAny) implements Object {}

/// A JavaScript `Object`.
///
/// [JSObject] is the supertype of all JavaScript objects, but not other JS
/// types, like primitives. See https://dart.dev/interop/js-interop for more
/// details on how to use JavaScript interop.
///
/// When declaring interop extension types, [JSObject] is usually the type you
/// will use as the representation type.
@JS('Object')
extension type JSObject._(JSAny _jsObject) implements JSAny {
  /// Creates a [JSObject] from an object provided by an earlier interop
  /// library.
  ///
  /// Accepts, for example, the types created using `package:js` or `dart:html`.
  ///
  /// This constructor is intended to allow users to avoid having to cast to and
  /// from [JSObject].
  JSObject.fromInteropObject(Object interopObject) : _jsObject = interopObject as JSAny;

  /// Creates a new empty JavaScript object.
  ///
  /// The object is created using the JavaScript object initializer syntax
  /// (`{}`), and this constructor is more efficient than `{}.jsify()`.
  JSObject() : _jsObject = {} as JSAny;
}

/// Common utility functions for <code>[Object]?</code>s.
extension NullableObjectUtilExtension on Object? {
  /// Converts a Dart object to the JavaScript equivalent if possible.
  ///
  /// Effectively the inverse of [JSAnyUtilityExtension.dartify], [jsify] takes
  /// a Dart object and recursively converts it to a JavaScript value. Only Dart
  /// primitives, [Iterable]s, typed lists, and [Map]s are supported.
  ///
  /// > [!NOTE]
  /// > Prefer using the specific conversion method like `toJS` if you know the
  /// > Dart type as this method may perform many type-checks.
  // TODO(srujzs): We likely need stronger tests for this method to ensure
  // consistency.
  external JSAny? jsify();
}
//
//
//

/// Common utility functions that are useful for any JavaScript value.
extension JSAnyUtilityExtension on JSAny? {
  /// Whether the result of `typeof` on this <code>[JSAny]?</code> is
  /// [typeString].
  external bool typeofEquals(String typeString);

  /// Whether this <code>[JSAny]?</code> is an `instanceof` [constructor].
  external bool instanceof(dynamic constructor);

  /// Whether this <code>[JSAny]?</code> is an `instanceof` the constructor that
  /// is defined by [constructorName], which is looked up in the
  /// [globalContext].
  ///
  /// If [constructorName] contains '.'s, the name is split into several parts
  /// in order to get the constructor. For example, `library1.JSClass` would
  /// involve fetching `library1` off of the [globalContext], and then fetching
  /// `JSClass` off of `library1` to get the constructor.
  ///
  /// If [constructorName] is empty or any of the parts or the constructor don't
  /// exist, returns false.
  bool instanceOfString(String constructorName) {
    return false;
    // if (constructorName.isEmpty) return false;
    // final parts = constructorName.split('.');
    // JSObject? constructor;
    // for (final part in parts) {
    //   // constructor = constructor?[part] as JSObject?;
    //   // if (constructor == null) return false;
    // }
    // return instanceof(constructor);
  }

  /// Whether this <code>[JSAny]?</code> is an instance of the JavaScript type
  /// that is declared by [T].
  ///
  /// Since the type-check this function emits is determined at compile-time,
  /// [T] needs to be an interop extension type that can also be determined at
  /// compile-time. In particular, `isA` can't be provided a generic type
  /// variable as a type argument.
  ///
  /// This method uses a combination of `null`, `typeof`, and `instanceof`
  /// checks in order to do this check. Use this instead of `is` checks.
  ///
  /// If [T] is a primitive JS type like [JSString], this uses a `typeof` check
  /// that corresponds to that primitive type like `typeofEquals('string')`.
  ///
  /// If [T] is a non-primitive JS type like [JSArray] or an interop extension
  /// type on one, this uses an `instanceof` check using the name or the
  /// <code>@[JS]</code> rename of the given type like
  /// `instanceOfString('Array')`. Note that if you rename the library using the
  /// <code>@[JS]</code> annotation, this uses the rename in the `instanceof`
  /// check like `instanceOfString('library1.JSClass')`.
  ///
  /// To determine the JavaScript constructor to use as the second operand in
  /// the `instanceof` check, this function uses the JavaScript name associated
  /// with the extension type, which is either the argument given to the
  /// <code>@[JS]</code> annotation or the Dart declaration name. So, if you had
  /// an interop extension type `JSClass` that wraps `JSArray` without a rename,
  /// this does an `instanceOfString('JSClass')` check and not an
  /// `instanceOfString('Array')` check.
  ///
  /// There are two exceptions to this rule. The first exception is
  /// `JSTypedArray`. As `TypedArray` does not exist as a property in
  /// JavaScript, this does some prototype checking to make `isA<JSTypedArray>`
  /// do the right thing. The other exception is `JSAny`. If you do a
  /// `isA<JSAny>` check, it will only do a `null` check.
  ///
  /// Using this method with a [T] that has an object literal constructor will
  /// result in an error as you likely want to use [JSObject] instead.
  ///
  /// Using this method with a [T] that wraps a primitive JS type will result in
  /// an error telling you to use the primitive JS type instead.
  // @Since('3.4')
  external bool isA<T extends JSAny?>();

  /// Converts a JavaScript value to the Dart equivalent if possible.
  ///
  /// Effectively the inverse of [NullableObjectUtilExtension.jsify], [dartify]
  /// takes a JavaScript value and recursively converts it to a Dart object.
  /// Only JavaScript primitives, `Array`s, typed arrays, and map-like objects
  /// with string property names are supported.
  ///
  /// > [!NOTE]
  /// > Prefer using the specific conversion method like `toDart` if you know
  /// > the JavaScript type as this method may perform many type-checks.
  // TODO(srujzs): We likely need stronger tests for this method to ensure
  // consistency.
  external Object? dartify();
}
