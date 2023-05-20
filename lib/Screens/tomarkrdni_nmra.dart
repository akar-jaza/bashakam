// ignore_for_file: prefer_const_constructors

import 'package:bashakam_barawzanko/constantes/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TomarkrdniNmraPage extends StatefulWidget {
  const TomarkrdniNmraPage({super.key});

  @override
  State<TomarkrdniNmraPage> createState() => _TomarkrdniNmraPageState();
}

class _TomarkrdniNmraPageState extends State<TomarkrdniNmraPage> {
  TextEditingController _textController = TextEditingController();

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ColorFile colorFile = ColorFile();
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
        title: Align(
          alignment: Alignment.centerRight,
          child: Text(
            'تۆمارکردنی نمرەکان',
            style: TextStyle(color: colorFile.kWhiteTextColor),
          ),
        ),
      ),
      body: Center(
        child: Column(),
      ),
    );
  }
}
