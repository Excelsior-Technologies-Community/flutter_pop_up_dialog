import 'package:flutter/material.dart';

class AlertDialogs {
  static void defaultAlert(BuildContext context) {
    show(context, "Alert", "This is default alert", Icons.info, Colors.orange);
  }

  static void errorDialog(BuildContext context) {
    show(context, "Error", "Something went wrong", Icons.error, Colors.red);
  }

  static void warningDialog(BuildContext context) {
    show(
      context,
      "Warning",
      "Please be careful",
      Icons.warning,
      Colors.deepOrange,
    );
  }

  static void successDialog(BuildContext context) {
    show(
      context,
      "Success",
      "Operation successful",
      Icons.check_circle,
      Colors.green,
    );
  }

  static void show(
    BuildContext context,
    String title,
    String message,
    IconData icon,
    Color color,
  ) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 80, color: color),
            const SizedBox(height: 12),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        content: Text(
          message,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 15),
        ),
        actionsAlignment: MainAxisAlignment.center,
        actions: [
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: color,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () => Navigator.pop(context),
              child: const Text("OK", style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}
