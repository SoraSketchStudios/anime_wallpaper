import 'package:flutter/material.dart';

Future<bool> appShowAlertDialog(BuildContext context) async {
  final bool check = await showDialog(
    context: context,
    builder: (_) => AlertDialog(
      title: const Text("Notifier"),
      content: const Text("Are you sure?"),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.pop(context, false);
            },
            child: const Text("Cancel")),
        ElevatedButton(
            onPressed: () {
              Navigator.pop(context, true);
            },
            child: const Text("Ok")),
      ],
    ),
  );
  return check;
}
