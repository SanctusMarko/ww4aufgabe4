import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Snackbar und Dialog Aufgabe4"),
        ),
        body: const Center(
          child: AlertDialogButton(),
        ),
      ),
    );
  }
}

class AlertDialogButton extends StatelessWidget {
  const AlertDialogButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        _showAlertDialog(context);
      },
      child: const Text("Show Dialog"),
    );
  }

  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Alert Dialog"),
          content: const Text("Do you want to show a Snackbar?"),
          actions: <Widget>[
            TextButton(
              child: const Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
                _showSnackbar(context);
              },
            ),
          ],
        );
      },
    );
  }

  void _showSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("This is a Snackbar"),
      ),
    );
  }
}
