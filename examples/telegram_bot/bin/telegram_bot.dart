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

import 'package:general_universe/extension/extension.dart';
import 'package:google_apps_script_library/google_apps_script_library_project.dart';
import 'package:telegram_gas/telegram_gas.dart';

void main(List<String> args) {
  print("starting");
  GoogleAppsScriptEventTriggers googleAppsScriptEventTriggers = GoogleAppsScriptEventTriggers();
  final TelegramGas telegram = TelegramGas();

  final PropertiesServiceProperties propertiesServiceProperties = PropertiesService.getScriptProperties();
  final Map telegramBotConfiguration = () {
    try {
      final value = propertiesServiceProperties.getProperty(
        "telegram_bot_configuration",
      );
      return json.decode(value) as Map;
    } catch (e) {}
    return {};
  }();
  bool isFoundUpdate = false;
  {
    if (telegramBotConfiguration["telegram_token_bot"] is String == false) {
      telegramBotConfiguration["telegram_token_bot"] = "";
      isFoundUpdate = true;
    }

    if (telegramBotConfiguration["telegram_bot_webhook_url"] is String == false) {
      telegramBotConfiguration["telegram_bot_webhook_url"] = "";
      isFoundUpdate = true;
    }

    if (telegramBotConfiguration["is_telegram_set_webhook"] is bool == false) {
      telegramBotConfiguration["is_telegram_set_webhook"] = false;
      isFoundUpdate = true;
    }
    if (telegramBotConfiguration["is_telegram_set_webhook"] == false) {
      isFoundUpdate = true;
    }
  }
  final String telegramTokenBot = telegramBotConfiguration["telegram_token_bot"];
  final String telegramBotWebhookUrl = telegramBotConfiguration["telegram_bot_webhook_url"];

  if (telegramBotConfiguration["is_telegram_set_webhook"] != true) {
    isFoundUpdate = true;
    telegramBotConfiguration["is_telegram_set_webhook"] = true;
    telegram.request(
      parameters: {
        "@type": "setWebhook",
        "url": telegramBotWebhookUrl,
      },
      token: telegramBotWebhookUrl,
    );
  }
  print("update: ${isFoundUpdate}");

  if (isFoundUpdate) {
    propertiesServiceProperties.setProperty(
      "telegram_bot_configuration",
      telegramBotConfiguration.toStringifyPretty(),
    );
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
          final Map msgChat = message["chat"];
          final int chatId = msgChat["id"];
          String captionOrText = () {
            if (message["text"] is String) {
              return message["text"];
            }
            if (message["caption"] is String) {
              return message["caption"];
            }
            return "";
          }();
          if (captionOrText.isNotEmpty) {
            if (RegExp("^(/start)").hasMatch(captionOrText)) {
              telegram.request(
                parameters: {
                  "@type": "sendMessage",
                  "chat_id": chatId,
                  "text": """
Hai saya adalah robot

new update
"""
                      .trim(),
                },
                token: telegramTokenBot,
              );
            }
            if (RegExp("^(/ping)").hasMatch(captionOrText)) {
              telegram.request(
                parameters: {
                  "@type": "sendMessage",
                  "chat_id": chatId,
                  "text": "Pong",
                },
                token: telegramTokenBot,
              );
            }

            if (RegExp("^(/test)").hasMatch(captionOrText)) {
              telegram.request(
                parameters: {
                  "@type": "sendMessage",
                  "chat_id": chatId,
                  "text": "Run Test",
                },
                token: telegramTokenBot,
              );
              telegram.request(
                parameters: {
                  "@type": "sendMessage",
                  "chat_id": chatId,
                  "text": "Result:",
                },
                token: telegramTokenBot,
              );
            }
          }
        }
      } catch (e) {}
    },
  );
}
