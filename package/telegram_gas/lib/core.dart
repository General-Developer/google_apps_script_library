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
import 'dart:convert';

import 'package:google_apps_script_library/google_apps_script_library_project.dart';

class TelegramGas {
  TelegramGas();

  Map invokeRaw({
    required Map parameters,
    required String token,
  }) {
    final String url = Uri.parse(
      "https://api.telegram.org",
    ).replace(pathSegments: [
      "bot${token}",
      parameters["@type"],
    ]).toString();
    final response = UrlFetchApp.fetch(
      url,
      {
        "method": 'POST',
        "contentType": 'application/json',
        "payload": json.encode(
          parameters,
        )
      },
    );
    final Map body = json.decode(response.getContentText());
    if (response.getResponseCode() != 200) {
      throw body;
    }

    return body;
  }

  Map invoke({
    required Map parameters,
    required String token,
  }) {
    return invokeRaw(
      parameters: parameters,
      token: token,
    );
  }

  Map request({
    required Map parameters,
    required String token,
  }) {
    return invoke(
      parameters: parameters,
      token: token,
    );
  }
}
