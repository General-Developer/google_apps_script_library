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
// import 'package:general_universe/dart_universe/io_universe/core/_exports_in_browser.dart';

import 'dart:io'; 
import 'package:google_apps_script_library/cli/file/data.dart';
import "package:path/path.dart" as path;

class GoogleAppsScriptLibraryCli {
  GoogleAppsScriptLibraryCli();

  Future<int> terminal({
    required String executable,
    required List<String> arguments,
    required String? workingDirectory,
  }) async {
    Process process = await Process.start(
      executable,
      arguments,
      workingDirectory: workingDirectory,
    );

    return await process.exitCode;
  }

  Future<void> compile({
    required String filePath,
  }) async {
    final Directory directoryOutput = Directory(
      path.join(
        Directory.current.path,
        "build",
        "google_apps_script",
      ),
    );
    if (directoryOutput.existsSync() == false) {
      directoryOutput.createSync(recursive: true);
    }
    {
      final File file = File(path.join(directoryOutput.path, "dart.gs"));
      if (file.existsSync()) {
        file.deleteSync(recursive: true);
      }
    }
    // if (directoryOutput)
    await terminal(
      executable: "dart",
      arguments: [
        "compile",
        "js",
        "-O2",
        "--no-frequency-based-minification",
        "--server-mode",
        filePath,
        "-o",
        "dart.gs",
      ],
      workingDirectory: directoryOutput.path,
    );
    for (final element in gasFiles()) {
      final File file = File(path.join(directoryOutput.path, element.fileName));
      if (file.existsSync()) {
        file.deleteSync(recursive: true);
      }
      await file.writeAsString(element.content);
    }

    return;
  }
}
