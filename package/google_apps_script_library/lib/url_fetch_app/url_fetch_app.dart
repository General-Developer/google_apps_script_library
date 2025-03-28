// import 'dart:js_interop';

// https://developers.google.com/apps-script/reference/url-fetch/url-fetch-app
// 26-maret-2025
// fetch(url)	HTTPResponse	Makes a request to fetch a URL.
// fetch(url, params)	HTTPResponse	Makes a request to fetch a URL using optional advanced parameters.
// fetchAll(requests)	HTTPResponse[]	Makes multiple requests to fetch multiple URLs using optional advanced parameters.
// getRequest(url)	Object	Returns the request that is made if the operation was invoked.
// getRequest(url, params)	Object	Returns the request that is made if the operation were invoked.
import 'package:google_apps_script_library/core/http/response/response.dart';
import 'package:google_apps_script_library/package/package.dart';

@JS("UrlFetchApp")
@staticInterop

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
class UrlFetchApp {
  @JS("fetch")

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  external static JSAny _fetch(
    JSAny? url,
    JSAny? options,
  );

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  static HTTPResponseGas fetch(
    String url,
    Map? options,
  ) {
    return HTTPResponseGas(
      raw: _fetch(
        url.jsify(),
        (options ?? {}).jsify(),
      ).dartify(),
    );
  }

  @JS("fetchAll")

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  external static JSAny _fetchAll(
    JSAny? url,
  );

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  static List<HTTPResponseGas> fetchAll(
    List<String> urls,
  ) {
    return (_fetchAll(urls.jsify()).dartify() as List).map((e) {
      return HTTPResponseGas(raw: e);
    }).toList();
  }

  @JS("getRequest")

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  external static JSAny _getRequest(
    JSAny? url,
    JSAny? options,
  );

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  static Object? getRequest(
    String url,
    Map? options,
  ) {
    return _getRequest(url.jsify(), (options ?? {}).jsify()).dartify();
  }
}
