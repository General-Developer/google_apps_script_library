import 'package:google_apps_script_library/package/js_interop/web.dart';

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
class HTTPResponseGas {
  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final Object? raw;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  HTTPResponseGas({
    required this.raw,
  });

// Raw: {
// toString: function () {
//   [native code]
// },
// getAllHeaders: function () {
//   [native code]
// },
// getContentText: function () {
//   [native code]
// },
// getHeaders: function () {
//   [native code]
// },
// getContent: function () {
//   [native code]
// },
// getResponseCode: function () {
//   [native code]
// },
// getAs: function () {
//   [native code]
// },
// getBlob: function () {
//   [native code]
// }
// }

  Map toMap() {
    return (raw as Map);
  }

  int getResponseCode() {
    return (toMap()["getResponseCode"]() as JSAny).dartify() as int;
  }

  String getContentText() {
    return (toMap()["getContentText"]() as JSAny).dartify() as String;
  }

  @override
  String toString() {
    return (toMap()["toString"]() as JSAny).dartify() as String;
  }

  dynamic getAllHeaders() {
    return (toMap()["getAllHeaders"]() as JSAny).dartify();
  }

  dynamic getHeaders() {
    return (toMap()["getHeaders"]() as JSAny).dartify();
  }

  dynamic getContent() {
    return (toMap()["getContent"]() as JSAny).dartify();
  }

  dynamic getAs() {
    return (toMap()["getAs"]() as JSAny).dartify();
  }

  dynamic getBlob() {
    return (toMap()["getBlob"]() as JSAny).dartify();
  }
}
