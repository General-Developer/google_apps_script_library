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
import 'package:general_universe/dart_universe/js_interop/js_interop.dart';

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
class HTTPRequestGas {
  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final Object? raw;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  HTTPRequestGas({
    required this.raw,
  });

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  Map toMap() {
    return (raw as Map);
  }

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  String get queryString {
    return (toMap()["queryString"] as JSAny).dartify() as String;
  }

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  Map get parameter {
    return (toMap()["parameter"] as JSAny).dartify() as Map;
  }

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  Map get parameters {
    return (toMap()["parameters"] as JSAny).dartify() as Map;
  }

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int get contentLength {
    return (toMap()["contentLength"] as JSAny).dartify() as int;
  }

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  HTTPRequestPostDataGas get postData {
    return HTTPRequestPostDataGas(raw: (toMap()["postData"] as JSAny).dartify());
  }

  @override
  String toString() {
    return toMap().toString();
  }
}

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
class HTTPRequestPostDataGas {
  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final Object? raw;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  HTTPRequestPostDataGas({
    required this.raw,
  });

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  Map toMap() {
    return (raw as Map);
  }

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int get length {
    return (toMap()["length"] as JSAny).dartify() as int;
  }

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  String get type {
    return (toMap()["type"] as JSAny).dartify() as String;
  }

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  String get contents {
    return (toMap()["contents"] as JSAny).dartify() as String;
  }

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  String get name {
    return (toMap()["name"] as JSAny).dartify() as String;
  }

  @override
  String toString() {
    return toMap().toString();
  }
}
