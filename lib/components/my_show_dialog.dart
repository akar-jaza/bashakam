import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constantes/Colors.dart';

void showConnectionDialog(BuildContext context) async {
  if (Theme.of(context).platform == TargetPlatform.iOS) {
    showCupertinoDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext dialogContext) {
        return CupertinoAlertDialog(
          title: const Text('Network Connection Required'),
          content: const Text('Please connect to a network and try again.'),
          actions: <Widget>[
            CupertinoDialogAction(
              child: const Text(
                'OK',
                style: TextStyle(color: Colors.blue),
              ),
              onPressed: () {
                Navigator.pop(dialogContext);
              },
            ),
          ],
        );
      },
    );
  } else {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext dialogContext) {
        return Theme(
          data: Theme.of(dialogContext).copyWith(
            dialogBackgroundColor:
                ThemeColors.kBodyColor, // Set the background color
            textTheme: const TextTheme(
              // Set the text colors
              titleLarge: TextStyle(color: ThemeColors.kWhiteTextColor),
              bodyMedium: TextStyle(color: ThemeColors.kWhiteTextColor),
            ),
          ),
          child: AlertDialog(
            title: const Text('Network Connection Required'),
            content: const Text('Please connect to a network and try again.'),
            actions: <Widget>[
              TextButton(
                child: const Text(
                  'OK',
                  style: TextStyle(color: ThemeColors.kblueColor),
                ),
                onPressed: () {
                  Navigator.pop(dialogContext);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}