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

import 'package:google_apps_script_library/cli/file/core.dart';

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
/// 
final String comment = """

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

""";
/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
List<GoogleAppsScriptFile> gasFiles() {

  return [
    GoogleAppsScriptFile(
      fileName: "Kode.gs",
      content: """
${comment}

if (typeof globalThis.self != "object") {
  if (typeof window == "object") {
    globalThis.self = window.self;
  } else {
    globalThis.self = this;
  }
}

function setTimeout(callback, delay = 0, ...params) {
  if (typeof delay != "number") {
    delay = 0;
  }
  if (delay < 1) {
    delay = 0;
  }
  if (delay != 0) { 
    Utilities.sleep(delay); // Menunggu sesuai delay yang diberikan
  }
  callback(...params); // Memanggil fungsi setelah delay
}

this.globalThis = globalThis;
"""
          .trim(),
    ),
    GoogleAppsScriptFile(
      fileName: "triggers.gs",
      content: """
${comment}


function invokeTestTriggers() { 
  if (globalThis.self.dartGoogleAppsScriptEventTriggersInvoke) {
    return globalThis.self.dartGoogleAppsScriptEventTriggersInvoke({
      "@type": "getVersion",
      "is_from_js": true,
    });
  }
}


function testTriggers() { 
  if (globalThis.self.dartGoogleAppsScriptEventTriggersTest) {
    return globalThis.self.dartGoogleAppsScriptEventTriggersTest();
  }
}

function doGet(e) { 
  if (globalThis.self.dartGoogleAppsScriptEventTriggersDoGet) {
    return globalThis.self.dartGoogleAppsScriptEventTriggersDoGet(e);
  }

  return ContentService.createTextOutput("Trigger: dartGoogleAppsScriptEventTriggersDoGet Not Found");
}

function doPost(e) { 

  if (globalThis.self.dartGoogleAppsScriptEventTriggersDoPost) {
    return globalThis.self.dartGoogleAppsScriptEventTriggersDoPost(e);
  }

  return ContentService.createTextOutput("Trigger: dartGoogleAppsScriptEventTriggersDoPost Not Found");
}
"""
          .trim(),
    ),
  ];
}
