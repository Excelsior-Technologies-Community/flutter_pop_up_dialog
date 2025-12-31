import 'package:flutter/material.dart';
import 'package:flutter_pop_up_dialog/dialogs/dialogs_screen/alert_dialogs.dart';
import 'package:flutter_pop_up_dialog/dialogs/dialogs_screen/progress_dialogs.dart';
import 'package:flutter_pop_up_dialog/dialogs/dialogs_screen/standard_dialogs.dart';
import 'package:flutter_pop_up_dialog/dialogs/dialogs_widgets/dialog_button.dart';

class DialogHomeScreen extends StatelessWidget {
  const DialogHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dialog types"),centerTitle: true,),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

          const Text("Progress Dialogs",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          DialogButton(
            text: "Default Progress Dialog",
            color: Colors.blue,
            onTap: () => ProgressDialogs.defaultProgress(context),
          ),
          DialogButton(
            text: "Lottie Animation Progress Dialog",
            color: Colors.lightBlue,
            onTap: () => ProgressDialogs.lottieProgress(context),
          ),

          const SizedBox(height: 25),
          const Text("Standard Dialogs",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),

          DialogButton(
            text: "Standard Dialog",
            color: Colors.purple,
            onTap: () => StandardDialogs.materialDialog(context),
          ),
          DialogButton(
            text: "iOS Style Dialog",
            color: Colors.deepPurple,
            onTap: () => StandardDialogs.iosDialog(context),
          ),

          const SizedBox(height: 25),
          const Text("Alert Dialogs",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),

          DialogButton(
            text: "Default Alert Dialog",
            color: Colors.orange,
            onTap: () => AlertDialogs.defaultAlert(context),
          ),
          DialogButton(
            text: "Error Dialog",
            color: Colors.red,
            onTap: () => AlertDialogs.errorDialog(context),
          ),
          DialogButton(
            text: "Warning Dialog",
            color: Colors.deepOrange,
            onTap: () => AlertDialogs.warningDialog(context),
          ),
          DialogButton(
            text: "Success Dialog",
            color: Colors.green,
            onTap: () => AlertDialogs.successDialog(context),
          ),
        ]),
      ),
    );
  }
}
