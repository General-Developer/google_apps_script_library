/* <!-- START LICENSE -->


This Software / Program / Source Code Created By Developer From Company GLOBAL CORPORATION
Social Media:

   - Youtube: https://youtube.com/@Global_Corporation 
   - Github: https://github.com/globalcorporation
   - TELEGRAM: https://t.me/GLOBAL_CORP_ORG_BOT

All code script in here created 100% original without copy / steal from other code if we copy we add description source at from top code

If you wan't edit you must add credit me (don't change)

If this Software / Program / Source Code has you

Jika Program ini milik anda dari hasil beli jasa developer di (Global Corporation / apapun itu dari turunan itu jika ada kesalahan / bug / ingin request segera lapor ke sub)

Misal anda beli Beli source code di Slebew CORPORATION anda lapor dahulu di slebew jangan lapor di GLOBAL CORPORATION!

Jika ada kendala program ini (Pastikan sebelum deal project tidak ada negosiasi harga)
Karena jika ada negosiasi harga kemungkinan

1. Software Ada yang di kurangin
2. Informasi tidak lengkap
3. Bantuan Tidak Bisa remote / full time (Ada jeda)

Sebelum program ini sampai ke pembeli developer kami sudah melakukan testing

jadi sebelum nego kami sudah melakukan berbagai konsekuensi jika nego tidak sesuai ? 
Bukan maksud kami menipu itu karena harga yang sudah di kalkulasi + bantuan tiba tiba di potong akhirnya bantuan / software kadang tidak lengkap


<!-- END LICENSE --> */
// onOpen(e) runs when a user opens a spreadsheet, document, presentation, or form that the user has permission to edit.
// onInstall(e) runs when a user installs an Editor add-on from within Google Docs, Sheets, Slides, or Forms.
// onEdit(e) runs when a user changes a value in a spreadsheet.
// onSelectionChange(e) runs when a user changes the selection in a spreadsheet.
// doGet(e) runs when a user visits a web app or a program sends an HTTP GET request to a web app.
// doPost(e) runs when a program sends an HTTP POST request to a web app.

// ignore_for_file: public_member_api_docs, invalid_runtime_check_with_js_interop_types

// import 'package:general_universe/dart_universe/js_interop/web.dart';
 
import 'package:google_apps_script_library/core/http/http.dart';
import 'package:general_universe/dart_universe/js_interop/js_interop.dart';

// import 'package:general_universe/dart_universe/js_interop/js_interop.dart';

//
@JS("dartGoogleAppsScriptEventTriggersDoGet")
external set _dartGoogleAppsScriptEventTriggersDoGetFunction(JSFunction? onFunction);
typedef GoogleAppsScriptEventTriggersDoGetJSFunction = JSAny? Function(JSAny request);
typedef GoogleAppsScriptEventTriggersDoGetDartFunction = dynamic Function(HTTPRequestGas request);
//

@JS("dartGoogleAppsScriptEventTriggersDoPost")
external set _dartGoogleAppsScriptEventTriggersDoPostFunction(JSAny? onFunction);
typedef GoogleAppsScriptEventTriggersDoPostJSFunction = JSAny? Function(JSAny request);
typedef GoogleAppsScriptEventTriggersDoPostDartFunction = dynamic Function(HTTPRequestGas request);
//

//
@JS("dartGoogleAppsScriptEventTriggersTest")
external set _dartGoogleAppsScriptEventTriggersTestFunction(JSFunction? onFunction);
typedef GoogleAppsScriptEventTriggersTestJSFunction = JSAny? Function();
typedef GoogleAppsScriptEventTriggersTestDartFunction = dynamic Function();

//

//
@JS("dartGoogleAppsScriptEventTriggersInvoke")
external set _dartGoogleAppsScriptEventTriggersInvokeFunction(JSFunction? onFunction);
typedef GoogleAppsScriptEventTriggersInvokeJSFunction = JSAny? Function(JSAny parameters);
typedef GoogleAppsScriptEventTriggersInvokeDartFunction = dynamic Function(Object? parameters);

//
//

// void setTimeout(Function callback, [dynamic delay = 0, List<dynamic> params = const []]) {
//   if (delay is int == false) {
//     delay = 0;
//   }
//   if (delay < 1) {
//     delay = 0;
//   }

//   if (delay != 0) {
//     // Future.delayed(Duration(milliseconds: delay), () => Function.apply(callback, params));
//     sleep(Duration(milliseconds: delay));
//   }
//   Function.apply(callback, params);
// }

// https://developers.google.com/apps-script/guides/triggers
class GoogleAppsScriptEventTriggers {
  GoogleAppsScriptEventTriggers();

  GoogleAppsScriptEventTriggersDoGetJSFunction dartGoogleAppsScriptEventTriggersDoGetFunction({
    required final GoogleAppsScriptEventTriggersDoGetDartFunction doGet,
  }) {
    return (JSAny request) {
      final result = doGet(HTTPRequestGas(raw: request.dartify()));
      //
      if (result is JSAny) {
        return result;
      }
      return result.jsify();
    };
  }

  GoogleAppsScriptEventTriggersDoPostJSFunction dartGoogleAppsScriptEventTriggersDoPostFunction({
    required final GoogleAppsScriptEventTriggersDoPostDartFunction doPost,
  }) {
    return (JSAny request) {
      final result = doPost(HTTPRequestGas(raw: request.dartify()));
      //
      if (result is JSAny) {
        return result;
      }
      return result.jsify();
    };
  }

  GoogleAppsScriptEventTriggersTestJSFunction dartGoogleAppsScriptEventTriggersTestFunction({
    required final GoogleAppsScriptEventTriggersTestDartFunction onTest,
  }) {
    return () {
      final result = onTest();
      //
      if (result is JSAny) {
        return result;
      }
      return result.jsify();
    };
  }

  GoogleAppsScriptEventTriggersInvokeJSFunction dartGoogleAppsScriptEventTriggersInvokeFunction({
    required final GoogleAppsScriptEventTriggersInvokeDartFunction onInvoke,
  }) {
    return (JSAny request) {
      final result = onInvoke(request.dartify());
      //
      if (result is JSAny) {
        return result;
      }
      return result.jsify();
    };
  }

  void ensureInitialized({
    bool isUseDirectGlobalContext = false,
    final GoogleAppsScriptEventTriggersDoGetDartFunction? doGet,
    final GoogleAppsScriptEventTriggersDoPostDartFunction? doPost,
    final GoogleAppsScriptEventTriggersTestDartFunction? onTest,
    final GoogleAppsScriptEventTriggersInvokeDartFunction? onInvoke,
  }) {
    if (isUseDirectGlobalContext){

    }
    if (doGet != null) {
      final valueFunction = dartGoogleAppsScriptEventTriggersDoGetFunction(doGet: doGet).toJS;
      if (isUseDirectGlobalContext) {
        globalContext.setProperty("doGet".toJS, valueFunction);
      }
      _dartGoogleAppsScriptEventTriggersDoGetFunction = valueFunction;
    }
    if (doPost != null) {
      final valueFunction = dartGoogleAppsScriptEventTriggersDoPostFunction(doPost: doPost).toJS;
      if (isUseDirectGlobalContext) {
        globalContext.setProperty("doPost".toJS, valueFunction);
      }
      _dartGoogleAppsScriptEventTriggersDoPostFunction = valueFunction;
    }
    if (onTest != null) {
      _dartGoogleAppsScriptEventTriggersTestFunction = dartGoogleAppsScriptEventTriggersTestFunction(
        onTest: onTest,
      ).toJS;
    }
    if (onInvoke != null) {
      _dartGoogleAppsScriptEventTriggersInvokeFunction = dartGoogleAppsScriptEventTriggersInvokeFunction(
        onInvoke: onInvoke,
      ).toJS;
    }
  }
}
