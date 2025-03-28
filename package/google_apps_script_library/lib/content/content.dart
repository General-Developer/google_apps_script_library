import 'package:google_apps_script_library/package/package.dart';

@JS("ContentService")
@staticInterop

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
class ContentService {
  @JS("createTextOutput")

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  external static JSObject _createTextOutput(
    JSAny? vaalue,
  );

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  static Object? createTextOutput(
    String value,
  ) {
    return _createTextOutput(value.jsify()).dartify();
  }
}
