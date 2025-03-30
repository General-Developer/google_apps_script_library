import 'package:general_universe/dart_universe/js_interop/js_interop.dart';

import 'properties.dart';

@JS("PropertiesService")
@staticInterop
/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
class PropertiesService {
  @JS("getDocumentProperties")
  external static JSAny _getDocumentProperties();

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  static PropertiesServiceProperties getDocumentProperties() {
    return PropertiesServiceProperties(raw: _getDocumentProperties().dartify());
  }

  @JS("getScriptProperties")
  external static JSAny _getScriptProperties();
/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  static PropertiesServiceProperties getScriptProperties() {
    return PropertiesServiceProperties(raw: _getScriptProperties().dartify());
  }

  @JS("getUserProperties")
  external static JSAny _getUserProperties();

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  static PropertiesServiceProperties getUserProperties() {
    return PropertiesServiceProperties(raw: _getUserProperties().dartify());
  }
}
