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

import 'dart:js_interop_unsafe';

import 'package:google_apps_script_library/google_apps_script_library_project.dart';
import 'package:telegram_gas/telegram_gas.dart';
import "dart:js_interop" as js_interop;

void main(List<String> args) {
  print("starting");
  GoogleAppsScriptEventTriggers googleAppsScriptEventTriggers = GoogleAppsScriptEventTriggers();
  final TelegramGas telegram = TelegramGas();
  final String telegram_token_bot = js_interop.globalContext.getProperty("telegram_token_bot".toJS).dartify() as String;
  // print("dart: ${Session.getActiveUser().getUsername()}");
  try {
    print("properties");

    final PropertiesServiceProperties propertiesServiceProperties = PropertiesService.getScriptProperties();
    print(propertiesServiceProperties.toMap());
    {
      print("keys: ${propertiesServiceProperties.getKeys()}");

      print("getProperties: ${propertiesServiceProperties.getProperties()}");
    }
    {
      final dynamic token = propertiesServiceProperties.getProperty("token");
      print("token: ${token}");
      if (token == null || (token is String && token.isEmpty)) {
        print("add token");
        propertiesServiceProperties.setProperty("token", "slebew: ${DateTime.now().toString()}");
      } else {
        print("delete token");
        propertiesServiceProperties.deleteProperty("token");
      }
    }
  } catch (e) {
    print("dart crash");
    print(e);
  }
  googleAppsScriptEventTriggers.ensureInitialized(
    doGet: (update) {
      return ContentService.createTextOutput(
        "response get",
      );
    },
    doPost: (update) {
      try {
        Map body = update.bodyAsJson();
        if (body["message"] is Map) {
          final Map message = body["message"];
          final Map msg_chat = message["chat"];
          final int chat_id = msg_chat["id"];
          String caption_or_text = () {
            if (message["text"] is String) {
              return message["text"];
            }
            if (message["caption"] is String) {
              return message["caption"];
            }
            return "";
          }();
          if (caption_or_text.isNotEmpty) {
            if (RegExp("^(/start)").hasMatch(caption_or_text)) {
              telegram.request(
                parameters: {
                  "@type": "sendMessage",
                  "chat_id": chat_id,
                  "text": "Hai saya adalah robot",
                },
                token: telegram_token_bot,
              );
            }
            if (RegExp("^(/ping)").hasMatch(caption_or_text)) {
              telegram.request(
                parameters: {
                  "@type": "sendMessage",
                  "chat_id": chat_id,
                  "text": "Pong",
                },
                token: telegram_token_bot,
              );
            }

            if (RegExp("^(/test)").hasMatch(caption_or_text)) {
              telegram.request(
                parameters: {
                  "@type": "sendMessage",
                  "chat_id": chat_id,
                  "text": "Run Test",
                },
                token: telegram_token_bot,
              );
              telegram.request(
                parameters: {
                  "@type": "sendMessage",
                  "chat_id": chat_id,
                  "text": "Result:",
                },
                token: telegram_token_bot,
              );
            }
          }
        }
      } catch (e) {}
    },
  );
}
