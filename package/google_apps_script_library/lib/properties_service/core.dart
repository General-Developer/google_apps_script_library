import 'package:google_apps_script_library/package/js_interop/js_interop.dart';

import 'properties.dart';

@JS("PropertiesService")
@staticInterop
class PropertiesService {
  @JS("getDocumentProperties")
  external static JSAny _getDocumentProperties();

  static PropertiesServiceProperties getDocumentProperties() {
    return PropertiesServiceProperties(raw: _getDocumentProperties().dartify());
  }

  @JS("getScriptProperties")
  external static JSAny _getScriptProperties();
  static PropertiesServiceProperties getScriptProperties() {
    return PropertiesServiceProperties(raw: _getScriptProperties().dartify());
  }

  @JS("getUserProperties")
  external static JSAny _getUserProperties();

  static PropertiesServiceProperties getUserProperties() {
    return PropertiesServiceProperties(raw: _getUserProperties().dartify());
  }
}
