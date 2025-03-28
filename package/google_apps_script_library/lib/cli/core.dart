// import 'package:general_universe/dart_universe/io_universe/core/_exports_in_browser.dart';

import 'dart:io';
import 'package:general_universe/general_universe.dart';
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
    directoryOutput.generalUniverseUtilsDangerRecreate();
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
      await file.writeAsString(element.content);
    }

    return;
  }
}
