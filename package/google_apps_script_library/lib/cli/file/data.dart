import 'package:google_apps_script_library/cli/file/core.dart';

List<GoogleAppsScriptFile> gasFiles() {
  return [
    GoogleAppsScriptFile(
      fileName: "Kode.gs",
      content: """


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
