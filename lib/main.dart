// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'Homepage.dart';
import 'constantes/Colors.dart';

void main() => runApp(Main());

// ignore: use_key_in_widget_constructors
class Main extends StatelessWidget {
  ColorFile colorFile = ColorFile();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true, fontFamily: 'uni', primaryColorDark: Colors.black,
        // appBarTheme: AppBarTheme(
        //   color: colorFile.appBarColor,
        // ),
        // scaffoldBackgroundColor: colorFile.bodyColor,
      ),
      home: HomePage(),
    );
  }
}
