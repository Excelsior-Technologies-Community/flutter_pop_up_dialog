import 'package:flutter/material.dart';

class InfoDialogWidget extends StatelessWidget {
  const InfoDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Information"),
      content: const Text("This dialog is used to show information."),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text("Close"),
        ),
      ],
    );
  }
}
