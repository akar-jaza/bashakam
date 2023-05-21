// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'Screens/Homepage.dart';
import 'constantes/Colors.dart';
import 'constantes/SystemUiOverlayFunc.dart';

void main() {
  SystemUiOverlayFunc uiOverlayFunc = SystemUiOverlayFunc();
  uiOverlayFunc.systemUiOverlay();
  runApp(Main());
}

// ignore: use_key_in_widget_constructors
class Main extends StatelessWidget {
  final ColorFile colorFile = ColorFile();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'rabarBold',
        colorSchemeSeed: colorFile.kblueColor,
      ),
      home: HomePage(),
    );
  }
}
