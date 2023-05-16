// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:bashakam_barawzanko/Screens/Homepage.dart';
import 'package:bashakam_barawzanko/constantes/Colors.dart';
import 'package:flutter/material.dart';
import '../constantes/SystemUiOverlayFunc.dart';

class Nmrakanm extends StatefulWidget {
  const Nmrakanm({super.key});

  @override
  State<Nmrakanm> createState() => _NmrakanmState();
}

class _NmrakanmState extends State<Nmrakanm> {
  ColorFile colorFile = ColorFile();
  SystemUiOverlayFunc uiOverlayFunc = SystemUiOverlayFunc();

  @override
  Widget build(BuildContext context) {
    uiOverlayFunc.systemUiOverlay();
    return Scaffold(
      backgroundColor: colorFile.kbodyColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: colorFile.kWhiteTextColor),
        backgroundColor: colorFile.kbodyColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
