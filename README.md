## 📦PopUpDialog

A beautiful and customizable Popup Dialog library for Flutter.
This package provides ready-to-use dialogs such as:

* Progress Dialogs
* Alert Dialogs (Error, Warning, Success, Info)
* Standard Material Dialog
* iOS (Cupertino) Style Dialog
* Custom & Confirm Dialogs (extensible)
Perfect for apps that need modern, attractive & reusable dialogs.
---
## ✨ Features

* ✔ Modern UI dialogs
* ✔ Material & Cupertino support
* ✔ Lottie animation progress dialog
* ✔ Full-width buttons
* ✔ Easy to use static methods
* ✔ Library & production ready
---

## ✨ Preview
![screen-20251231-1507152](https://github.com/user-attachments/assets/a23bdbeb-4c52-456c-bb9e-aefe496cd95e)

---
## ✨ Installation
Add this to your package's pubspec.yaml file:
```
dependencies:
  flutter_pop_up_dialog:
    path: ../flutter_pop_up_dialog  # For local development
```
from git:
```
dependencies:
  flutter_pop_up_dialog:
    git:
      url: https://github.com/yourusername/flutter_pop_up_dialog.git  # Your github path
``` 
Then run:
```
flutter pub get
```
---

## 📂 Folder Structure
```
flutter_pop_up_dialog/
│
├── lib/
│   ├── flutter_pop_up_dialog.dart
│   │
│   └── dialogs/
│       ├── dialogs_screen/
│       │   ├── alert_dialogs.dart
│       │   ├── confirm_dialog_widget.dart
│       │   ├── custom_dialog_widget.dart
│       │   ├── info_dialog_widget.dart
│       │   ├── progress_dialogs.dart
│       │   └── standard_dialogs.dart
│       │
│       ├── dialogs_widgets/
│       │   └── dialog_button.dart
│       │
│       └── screens/
│           └── home_screen.dart
│
├── test/
│   └── flutter_pop_up_dialog_test.dart
│
├── pubspec.yaml
└── README.md
```
---
## 📥 Import
```
import 'package:flutter_pop_up_dialog/flutter_pop_up_dialog.dart';
```
---
## 🔄 Progress Dialogs
#### Default Progress Dialog
```
ProgressDialogs.defaultProgress(context);
```
#### Lottie Animation Progress Dialog
```
ProgressDialogs.lottieProgress(context);
```
#### Close Progress Dialog
```
ProgressDialogs.hide(context);
```
---
## 🚨 Alert Dialogs
#### Default Alert
```
AlertDialogs.defaultAlert(context);
```
#### Error Dialog
```
AlertDialogs.errorDialog(context);
```
#### Warning Dialog
```
AlertDialogs.warningDialog(context);
```
#### Success Dialog
```
AlertDialogs.successDialog(context);
```
---
## 📋 Standard Dialogs
#### Material Dialog
```
StandardDialogs.materialDialog(context);
```
#### iOS (Cupertino) Dialog
```
StandardDialogs.iosDialog(context);
```
---
## 📱Full Example
```
import 'package:flutter/material.dart';
import 'package:flutter_pop_up_dialog/flutter_pop_up_dialog.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Popup Dialog Example',
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Popup Dialog Example'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            _button(
              "Default Progress Dialog",
              Colors.blue,
              () => ProgressDialogs.defaultProgress(context),
            ),
            _button(
              "Lottie Progress Dialog",
              Colors.blueAccent,
              () => ProgressDialogs.lottieProgress(context),
            ),
            _button(
              "Material Dialog",
              Colors.purple,
              () => StandardDialogs.materialDialog(context),
            ),
            _button(
              "iOS Dialog",
              Colors.deepPurple,
              () => StandardDialogs.iosDialog(context),
            ),
            _button(
              "Alert Dialog",
              Colors.orange,
              () => AlertDialogs.defaultAlert(context),
            ),
            _button(
              "Error Dialog",
              Colors.red,
              () => AlertDialogs.errorDialog(context),
            ),
            _button(
              "Warning Dialog",
              Colors.deepOrange,
              () => AlertDialogs.warningDialog(context),
            ),
            _button(
              "Success Dialog",
              Colors.green,
              () => AlertDialogs.successDialog(context),
            ),
          ],
        ),
      ),
    );
  }

  Widget _button(String text, Color color, VoidCallback onTap) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: SizedBox(
        width: double.infinity,
        height: 45,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          onPressed: onTap,
          child: Text(
            text,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

```
---
## 🔧 Customization
* Change dialog colors
* Replace Lottie animation
* Add multiple buttons
* Add auto-close timer
* Apply animations (scale / fade)

---
## 📜 License
MIT License
```
Copyright (c) 2025 Excelsior Technologies

Permission is hereby granted, free of charge, to any person obtaining a copy  
of this software and associated documentation files (the "Software"), to deal  
in the Software without restriction, including without limitation the rights  
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell  
copies of the Software, and to permit persons to whom the Software is  
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all  
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED **"AS IS"**, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR  
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,  
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
```
---
