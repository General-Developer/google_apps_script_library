# Google Apps Script Library
 
**Google Apps Script Library** It is a library that allows you to run dart programs in Google App Script https://script.google.com

[![](https://raw.githubusercontent.com/globalcorporation/.github/main/.github/logo/powered.png)](https://www.youtube.com/@Global_Corporation)

**Copyright (c) 2024 GLOBAL CORPORATION - GENERAL DEVELOPER**

## 📚️ Docs

1. [Documentation](https://youtube.com/@GENERAL_DEV)
2. [Youtube](https://youtube.com/@GENERAL_DEV)
3. [Telegram Support Group](https://t.me/DEVELOPER_GLOBAL_PUBLIC)
4. [Contact Developer](https://github.com/General-Developer) (check social media or readme profile github)

## 🔖️ Features

1. [x] 📱️ **Cross Platform** support (Device, Edge Severless functions)
2. [x] 📜️ **Standarization** Style Code
3. [x] ⌨️ **Cli** (Terminal for help you use this library or create project)
4. [x] 🔥️ **Api** (If you developer bot / userbot you can use this library without interact cli just add library and use 🚀️)
5. [x] 🧩️ **Customizable Extension** (if you want add extension so you can more speed up on development)
6. [x] ✨️ **Pretty Information** (user friendly for newbie)
 
## ❔️ Fun Fact

**This library 100%** use on every my create project (**App, Server, Bot, Userbot**)

- Kenapa semua library yang anda buat tidak support google apps script secara native?
karena google apps script gila, google apps script aslinya semua function berjalan secara sync, sedangkan library yang kami buat rata rata async jadi perlu rewrite ulang dengan nama baru

## 📈️ Proggres
 
- **10-02-2025**
  Starting **Release Stable** With core Features

### 📥️ Install Library

1. **Dart**

```bash

```

2. **Flutter**

```bash

```

## 🚀️ Quick Start

Example Quickstart script minimal for insight you or make you use this library because very simple

```dart
import 'dart:io';
import 'package:ffi/ffi.dart';
import "dart:ffi";
import 'package:google_apps_script_library/core/ggml/ffi/bindings.dart';
import 'package:google_apps_script_library/google_apps_script_library.dart';

void main(List<String> args) async {
  print("start");
  final GoogleAppsScriptLibrary googleAppsScriptLibrary = GoogleAppsScriptLibrary(
    libraryGgmlPath: "libggml.so",
  );
  await googleAppsScriptLibrary.ensureInitialized();
  final Pointer<ggml_init_params> params = calloc<ggml_init_params>();
  params.ref.no_alloc = false;
  final Pointer<ggml_context> ggmlContext = googleAppsScriptLibrary.googleAppsScriptLibrarySharedBindingsByGeneralDeveloper.ggml_init(params.ref);
  googleAppsScriptLibrary.googleAppsScriptLibrarySharedBindingsByGeneralDeveloper.ggml_free(ggmlContext);
  exit(0);
}
```

## Examples

- [Whisper Speech To Text / Transcribe From Audio Or Video](https://github.com/general-developer/whisper_library)
    
Minimal simple application example of using whisper library [Youtube Video](https://youtu.be/U-5EDMk0UgE) 
| Mobile                                                                                                                                  | Desktop |
|-----------------------------------------------------------------------------------------------------------------------------------------|---------|
| [![](https://raw.githubusercontent.com/General-Developer/whisper_library/refs/heads/main/assets/examples/whisper_app/mobile.png)](https://youtu.be/U-5EDMk0UgE) | [![](https://raw.githubusercontent.com/General-Developer/whisper_library/refs/heads/main/assets/examples/whisper_app/desktop.png)](https://youtu.be/U-5EDMk0UgE)        |


- [LLAMA Ai Edge / Local](https://github.com/general-developer/llama_library)
    
Minimal simple application example of using llama library [Youtube Video](https://youtu.be/U-5EDMk0UgE) 
| Mobile                                                                                                                                  | Desktop |
|-----------------------------------------------------------------------------------------------------------------------------------------|---------|
| [![](https://raw.githubusercontent.com/General-Developer/llama_library/refs/heads/main/assets/examples/llama_app/mobile.png)](https://youtu.be/U-5EDMk0UgE) | [![](https://raw.githubusercontent.com/General-Developer/llama_library/refs/heads/main/assets/examples/llama_app/desktop.png)](https://youtu.be/U-5EDMk0UgE)        |



- [Outetts Text To Speech](https://github.com/general-developer/outetts)
    
Minimal simple application example of using outetts [Youtube Video](https://youtu.be/U-5EDMk0UgE) 
| Mobile                                                                                                                                  | Desktop |
|-----------------------------------------------------------------------------------------------------------------------------------------|---------|
| [![](https://raw.githubusercontent.com/General-Developer/outetts/refs/heads/main/assets/examples/outetts_app/mobile.png)](https://youtu.be/U-5EDMk0UgE) | [![](https://raw.githubusercontent.com/General-Developer/outetts/refs/heads/main/assets/examples/outetts_app/desktop.png)](https://youtu.be/U-5EDMk0UgE)        |


- [Stable Diffusion](https://github.com/general-developer/stable_diffusion_library)
    
Minimal simple application example of Stable Diffusion [Youtube Video](https://youtu.be/U-5EDMk0UgE) 
| Mobile                                                                                                                                  | Desktop |
|-----------------------------------------------------------------------------------------------------------------------------------------|---------|
| [![](https://raw.githubusercontent.com/General-Developer/stable_diffusion_library/refs/heads/main/assets/examples/stable_diffusion_app/mobile.png)](https://youtu.be/U-5EDMk0UgE) | [![](https://raw.githubusercontent.com/General-Developer/stable_diffusion_library/refs/heads/main/assets/examples/stable_diffusion_app/desktop.png)](https://youtu.be/U-5EDMk0UgE)        |


**Copyright (c) 2024 GLOBAL CORPORATION - GENERAL DEVELOPER**
