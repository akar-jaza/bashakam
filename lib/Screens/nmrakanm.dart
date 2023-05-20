// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:bashakam_barawzanko/constantes/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../components/textfieldView.dart';
import '../constantes/SystemUiOverlayFunc.dart';

class Nmrakanm extends StatefulWidget {
  const Nmrakanm({super.key});

  @override
  State<Nmrakanm> createState() => _NmrakanmState();
}

class _NmrakanmState extends State<Nmrakanm> {
  ColorFile colorFile = ColorFile();
  SystemUiOverlayFunc uiOverlayFunc = SystemUiOverlayFunc();
  TextEditingController _textController = TextEditingController();

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

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
        title: Align(
          alignment: Alignment.centerRight,
          child: Text(
            'نمرەکانم',
            style: TextStyle(color: colorFile.kWhiteTextColor),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
            child: Column(
              children: [
                SvgPicture.asset('')
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: colorFile.kblueColor,
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
