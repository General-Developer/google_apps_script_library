import 'package:general_universe/dart_universe/js_interop/js_interop.dart';

@JS("Spreadsheet")
@staticInterop
class Spreadsheet {}

extension SpreadsheetExtension on Spreadsheet {
  // var ada = sas.getSheetByName(table_name);
  // if (ada == null) {
  // sas.insertSheet(table_name);

  @JS("getSheetByName")
  external Spreadsheet? _getSheetByName(String sheetName);
  Spreadsheet? getSheetByName(String sheetName) {
    return _getSheetByName(sheetName);
  }

  @JS("insertSheet")
  external Spreadsheet _insertSheet(String sheetName);
  Spreadsheet insertSheet(String sheetName) {
    return _insertSheet(sheetName);
  }

  @JS("getLastRow")
  external JSAny? _getLastRow();
  int getLastRow() {
    return _getLastRow().dartify() as int;
  }

  
}
