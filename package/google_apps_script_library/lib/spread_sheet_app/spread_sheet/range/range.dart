import 'package:general_universe/dart_universe/js_interop/js_interop.dart';

@JS("Range")
@staticInterop

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
class SpreadsheetRange {}

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
extension SpreadsheetRangeExtension on SpreadsheetRange {

  @JS("getValues")
  external JSAny? _getValues();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  List getValues() {
    return _getValues().dartify() as List;
  }

  @JS("setValues")
  external SpreadsheetRange _setValues(JSAny? values);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  SpreadsheetRange setValues(List values) {
    return _setValues(values.jsify());
  }

}
