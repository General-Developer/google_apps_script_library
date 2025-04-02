/* <!-- START LICENSE -->


This Software / Program / Source Code Created By Developer From Company GLOBAL CORPORATION
Social Media:

   - Youtube: https://youtube.com/@Global_Corporation 
   - Github: https://github.com/globalcorporation
   - TELEGRAM: https://t.me/GLOBAL_CORP_ORG_BOT

All code script in here created 100% original without copy / steal from other code if we copy we add description source at from top code

If you wan't edit you must add credit me (don't change)

If this Software / Program / Source Code has you

Jika Program ini milik anda dari hasil beli jasa developer di (Global Corporation / apapun itu dari turunan itu jika ada kesalahan / bug / ingin update segera lapor ke sub)

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
// import 'dart:js_interop';

import 'package:general_universe/dart_universe/js_interop/js_interop.dart';
import 'spreadsheet/spreadsheet.dart';

// uncomplete
@JS("SpreadsheetApp")
@staticInterop

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
class SpreadsheetApp {
  @JS("openById")
  external static SpreadSheet _openById(JSAny? sheetId);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  static SpreadSheet openById(String sheetId) {
    return _openById(sheetId.jsify());
  }

  @JS("openByUrl")
  external static SpreadSheet _openByUrl(JSAny? sheetUrl);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  static SpreadSheet openByUrl(String sheetUrl) {
    return _openByUrl(sheetUrl.jsify());
  }

  static SpreadSheet openByUrlOrId({
    required String sheetIdOrUrl,
  }) {
    if (RegExp("^(http(s)?://)", caseSensitive: false).hasMatch(sheetIdOrUrl)) {
      return openByUrl(sheetIdOrUrl);
    }
    return openById(sheetIdOrUrl);
  }

  @JS("create")
  external static SpreadSheet _create(JSAny? spreadsheetName);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  static SpreadSheet create(String spreadsheetName) {
    return _create(spreadsheetName.jsify());
  }

  // SpreadsheetApp.enableAllDataSourcesExecution();
// SpreadsheetApp.enableBigQueryExecution();
// SpreadsheetApp.enableLookerExecution();

  @JS("enableAllDataSourcesExecution")
  external static JSAny? _enableAllDataSourcesExecution();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  static void enableAllDataSourcesExecution() {
    _enableAllDataSourcesExecution();
    return;
  }

  @JS("enableBigQueryExecution")
  external static JSAny? _enableBigQueryExecution();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  static void enableBigQueryExecution() {
    _enableBigQueryExecution();
    return;
  }

  @JS("enableLookerExecution")
  external static JSAny? _enableLookerExecution();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  static void enableLookerExecution() {
    _enableLookerExecution();
    return;
  }
}
