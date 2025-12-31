import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class StandardDialogs {

  static void materialDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        title: const Text("Material Dialog"),
        content: const Text("This is a standard Material dialog."),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("OK"),
          ),
        ],
      ),
    );
  }

  static void iosDialog(BuildContext context) {
    showCupertinoDialog(
      context: context,
      builder: (_) => CupertinoAlertDialog(
        title: const Text("iOS Dialog"),
        content: const Text("Cupertino style dialog."),
        actions: [
          CupertinoDialogAction(
            isDefaultAction: true,
            child: const Text("Close"),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
