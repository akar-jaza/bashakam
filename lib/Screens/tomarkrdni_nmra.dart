// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bashakam_barawzanko/components/my_button.dart';
import 'package:bashakam_barawzanko/constantes/Colors.dart';
import 'package:flutter/material.dart';

import '../components/textfieldView.dart';

class TomarkrdniNmraPage extends StatefulWidget {
  const TomarkrdniNmraPage({super.key});

  @override
  State<TomarkrdniNmraPage> createState() => _TomarkrdniNmraPageState();
}

class _TomarkrdniNmraPageState extends State<TomarkrdniNmraPage> {
  final TextEditingController _textController = TextEditingController();
  final TextEditingController _textController2 = TextEditingController();
  final TextEditingController _textController3 = TextEditingController();
  final TextEditingController _textController4 = TextEditingController();
  final TextEditingController _textController5 = TextEditingController();
  final TextEditingController _textController6 = TextEditingController();
  final TextEditingController _textController7 = TextEditingController();
  final TextEditingController _textController8 = TextEditingController();

  @override
  void dispose() {
    _textController.dispose();
    _textController2.dispose();
    _textController3.dispose();
    _textController4.dispose();
    _textController5.dispose();
    _textController6.dispose();
    _textController7.dispose();
    _textController8.dispose();

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
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 170,
                  child: TextFieldView(
                    textController: _textController,
                    labelText: 'بیرکاری',
                  ),
                ),
                SizedBox(width: 20),
                SizedBox(
                  width: 170,
                  child: TextFieldView(
                    textController: _textController2,
                    labelText: 'ئینگلیزی',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 170,
                  child: TextFieldView(
                    textController: _textController3,
                    labelText: 'کوردی',
                  ),
                ),
                SizedBox(width: 20),
                SizedBox(
                  width: 170,
                  child: TextFieldView(
                    textController: _textController4,
                    labelText: 'کیمیا',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 170,
                  child: TextFieldView(
                    textController: _textController5,
                    labelText: 'زیندەوەرزانی',
                  ),
                ),
                SizedBox(width: 20),
                SizedBox(
                  width: 170,
                  child: TextFieldView(
                    textController: _textController6,
                    labelText: 'کوردی',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 170,
                  child: TextFieldView(
                    textController: _textController7,
                    labelText: 'عەرەبی',
                  ),
                ),
                SizedBox(width: 20),
                SizedBox(
                  width: 170,
                  child: TextFieldView(
                    textController: _textController8,
                    labelText: 'کوردی',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            MyButton()
          ],
        ),
      ),
    );
  }
}
