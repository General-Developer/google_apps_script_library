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
// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps

// import 'dart:convert';
import 'dart:async';
import 'dart:io';

import 'package:google_apps_script_library/schemes/schemes.dart';
import 'package:general_universe/general_universe.dart';

import "package:path/path.dart" as path;

extension DirectoryExtension on Directory {
  Directory recreate() {
    if (existsSync()) {
      deleteSync(recursive: true);
    }
    createSync(recursive: true);
    return this;
  }
}

void main(List<String> args) async {
  print("Start");
  await generateSchema(
    directoryBase: Directory(path.join(Directory.current.path, "lib", "scheme")),
  );
  print("Complete");
  exit(0);
}

Future<void> generateSchema({
  required Directory directoryBase,
}) async {
  for (var i = 0; i < google_apps_script_library_database_schemes.length; i++) {
    // google_apps_script_library_database_schemes[i].general_universe_extension_updateForce(data: data);
    google_apps_script_library_database_schemes[i].general_universe_extension_updateForce(data: {
      "from_app_id": "",
      "owner_account_user_id": 0,
    });
  }
  await jsonToScripts(
    google_apps_script_library_database_schemes,
    directory: Directory(
      path.join(
        directoryBase.uri.toFilePath(),
        "database_scheme",
      ),
    ).recreate(),
  );
  List<String> api_methods = [];
  // for (var i = 0; i < api_schemes.length; i++) {
  //   if (api_methods.contains(api_schemes[i]["@type"])) {
  //     throw "Api method found double";
  //   } else {
  //     api_methods.add(api_schemes[i]["@type"]);
  //   }
  //   // api_schemes[i].general_universe_extension_updateForce(data: data);
  //   api_schemes[i].general_universe_extension_updateForce(data: {
  //     "@platform_id": "",
  //     "@platform_username": "",
  //     "@extra": "",
  //     "@expire_date": "",
  //     "@token": "",
  //   });
  // }

  api_methods.sort();
//   File api_file_methods = File(path.join(directory_data.path, "api_methods.dart"));
//   await api_file_methods.writeAsString('''
// // ignore_for_file: non_constant_identifier_names
// List<String> api_method_lists = ${json.encode(api_methods)};
// '''
//       .trim());

  // await jsonToScripts(
  //   api_schemes,
  //   directory: Directory(
  //     path.join(
  //       directoryBase.uri.toFilePath(),
  //       "api_scheme",
  //     ),
  //   ).recreate(),
  // );
  // try {
  //   for (var i = 0; i < update_schemes.length; i++) {
  //     update_schemes[i].general_universe_extension_updateForce(data: {
  //       "@extra": "",
  //       "@expire_date": "",
  //       "@client_id": "",
  //     });
  //   }
  //   await jsonToScripts(
  //     update_schemes,
  //     directory: Directory(
  //       path.join(
  //         directoryBase.uri.toFilePath(),
  //         "update_scheme",
  //       ),
  //     ).recreate(),
  //   );
  // } catch (e, stack) {
  //   print("$e $stack");
  // }
  try {
    for (var i = 0; i < google_apps_script_library_respond_schemes.length; i++) {
      google_apps_script_library_respond_schemes[i].general_universe_extension_updateForce(data: {
        "@extra": "",
        "@expire_date": "",
        "@client_id": "",
      });
    }
    await jsonToScripts(
      google_apps_script_library_respond_schemes,
      directory: Directory(
        path.join(
          directoryBase.uri.toFilePath(),
          "respond_scheme",
        ),
      ).recreate(),
    );
  } catch (e, stack) {
    print("$e $stack");
  }
  try {
    for (var i = 0; i < google_apps_script_library_schemes.length; i++) {
      // schemes[i].general_universe_extension_updateForce(data:{
      //   "@extra": "",
      //   "@expire_date": "",
      //   "@client_id": "",
      // });
    }
    await jsonToScripts(
      google_apps_script_library_schemes,
      directory: Directory(
        path.join(
          directoryBase.uri.toFilePath(),
          "scheme",
        ),
      ).recreate(),
    );
  } catch (e, stack) {
    print("$e $stack");
  }
}

Future<void> generateClientApi() async {}

Future<void> generateApiApi() async {}

Future<void> generateIsarDatabase() async {
  print("START");
  // List<Map<String, dynamic>> datas = [
  //   {
  //     "@type": "user",
  //     "id": 0,
  //     "first_name": "",
  //     "last_name": "",
  //     "title": "",
  //     "username": "",
  //     "phone_number": "",
  //     "is_bot": false,
  //   },
  //   {
  //     "@type": "callApiRequestCache",
  //     "method": "",
  //     "client_user_id": 0,
  //     "count": 0,
  //     "expire_date": 0,
  //   },
  //   {
  //     "@type": "accountData",
  //     "id": 0,
  //     "first_name": "",
  //     "last_name": "",
  //     "username": "",
  //     "type": "",
  //   },
  //   {
  //     "@type": "invokeData",
  //     "client_user_id": 0,
  //     "date": 0,
  //     "method": "",
  //     "data": "",
  //   },
  //   {
  //     "@type": "sessionData",
  //     "client_user_id": 0,
  //     "client_token": "",
  //     "created_date": 0,
  //     "last_update_date": 0,
  //     "program_date": 0,
  //     "app_id": "",
  //     "is_default": false,
  //   },
  // ];
  //
  final Directory directory = Directory(path.join(
    Directory.current.path,
    "..",
    "google_apps_script_library_database_universe_scheme",
  ));

  if (directory.existsSync() == false) {
    directory.createSync(recursive: true);
  }
  Directory directory_database_scheme = Directory(
    path.join(
      directory.path,
      "lib",
      "database",
      "scheme",
    ),
  );
  directory_database_scheme.recreate();
  for (var i = 0; i < google_apps_script_library_database_schemes.length; i++) {
    google_apps_script_library_database_schemes[i].general_universe_extension_updateForce(data: {
      "id": 0,
    });
    Map<String, dynamic> data = google_apps_script_library_database_schemes[i];

    if (data["@type"] is String == false) {
      continue;
    }
    data["@type"] = (data["@type"] as String).camelCaseClass().toLowerCaseFirstData();
    JsonDataScript jsonDataScript = jsonToDatabaseUniverse(
      data,
      className: (data["@type"]),
      databaseUniverseVersion: 4,
      comment: "/// Generated",
    );
    await jsonDataScript.saveToFile(directory_database_scheme);
  }
  Process.runSync("dart", [
    "format",
    directory.path,
  ]);
  final result = await Process.start(
    "dart",
    [
      "run",
      "build_runner",
      "build",
      "--delete-conflicting-outputs",
    ],
    workingDirectory: directory.path,
  );
  result.stdout.listen(stdout.add);
  result.stderr.listen(stderr.add);
  int exit_code = await result.exitCode;
  print(exit_code);
}
