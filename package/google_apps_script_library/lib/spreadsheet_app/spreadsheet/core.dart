import 'package:general_universe/dart_universe/js_interop/js_interop.dart';
import 'package:google_apps_script_library/spreadsheet_app/spreadsheet_app.dart';

@JS("Spreadsheet")
@staticInterop

class SpreadSheetBase {}

@JS("Spreadsheet")
@staticInterop

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
class SpreadSheet extends SpreadSheetBase {}

@JS("Sheet")
@staticInterop

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
class SpreadSheetSheet extends SpreadSheetBase {}

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
extension SpreadSheetExtension on SpreadSheet {
  @JS("getId")
  external JSAny? _getId();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  String getId() {
    return _getId().dartify() as String;
  }

  @JS("getName")
  external JSAny? _getName();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  String getName() {
    return _getName().dartify() as String;
  }

  @JS("getUrl")
  external JSAny? _getUrl();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  String getUrl() {
    return _getUrl().dartify() as String;
  }
}

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
extension SpreadSheetBaseExtension on SpreadSheetBase { 

  // var ada = sas.getSheetByName(table_name);
  // if (ada == null) {
  // sas.insertSheet(table_name);

  @JS("getSheetByName")
  external SpreadSheetSheet? _getSheetByName(String sheetName);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  SpreadSheetSheet? getSheetByName(String sheetName) {
    return _getSheetByName(sheetName);
  }

  @JS("insertSheet")
  external SpreadSheetSheet _insertSheet(String sheetName);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  SpreadSheetSheet insertSheet(String sheetName) {
    return _insertSheet(sheetName);
  }

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer

  SpreadSheetSheet getSheetByNameAutoCreateIfNotExist(final String fromSheetName) {
    final SpreadSheetSheet? spreadsheetByName = getSheetByName(fromSheetName);
    if (spreadsheetByName == null) {
      return insertSheet(fromSheetName);
    }
    return spreadsheetByName;
  }

  @JS("getRange")
  external SpreadsheetRange _getRange(String sheetRange);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  SpreadsheetRange getRange(String sheetRange) {
    return _getRange(sheetRange);
  }

  @JS("getLastColumn")
  external JSAny? _getLastColumn();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int getLastColumn() {
    return _getLastColumn().dartify() as int;
  }

  @JS("getLastRow")
  external JSAny? _getLastRow();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int getLastRow() {
    return _getLastRow().dartify() as int;
  }

  @JS("appendRow")
  external JSAny? _appendRow(JSAny? values);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  void appendRow(List values) {
    _appendRow(values.jsify());
  }

  @JS("getSheetValues")
  external JSAny? _getSheetValues(
    JSAny? startRow,
    JSAny? startColumn,
    JSAny? numRows,
    JSAny? numColumns,
  );

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  List<List> getSheetValues(
    int startRow,
    int startColumn,
    int numRows,
    int numColumns,
  ) {
    return (_getSheetValues(
      startRow.jsify(),
      startColumn.jsify(),
      numRows.jsify(),
      numColumns.jsify(),
    ).dartify() as List)
        .cast<List>();
  }
}
