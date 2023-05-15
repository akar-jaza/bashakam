// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:bashakam_barawzanko/Homepage.dart';
import 'package:bashakam_barawzanko/constantes/Colors.dart';
import 'package:flutter/material.dart';

class Nmrakanm extends StatefulWidget {
  const Nmrakanm({super.key});

  @override
  State<Nmrakanm> createState() => _NmrakanmState();
}

class _NmrakanmState extends State<Nmrakanm> {
  ColorFile colorFile = ColorFile();
  final HomePage _homePage = HomePage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorFile.kbodyColor,
      appBar: AppBar(),
    );
  }
}
