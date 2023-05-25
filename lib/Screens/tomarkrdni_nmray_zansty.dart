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
  final TextEditingController _mathTextController = TextEditingController();
  final TextEditingController _englishTextController = TextEditingController();
  final TextEditingController _kurdiTextController = TextEditingController();
  final TextEditingController _chemistryTextController =
      TextEditingController();
  final TextEditingController _biologyTextController = TextEditingController();
  final TextEditingController _physicTextController = TextEditingController();
  final TextEditingController _arabicAndAiinTextController =
      TextEditingController();

  @override
  void dispose() {
    _mathTextController.dispose();
    _englishTextController.dispose();
    _kurdiTextController.dispose();
    _chemistryTextController.dispose();
    _biologyTextController.dispose();
    _physicTextController.dispose();
    _arabicAndAiinTextController.dispose();

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
                    textController: _mathTextController,
                    labelText: 'بیرکاری',
                  ),
                ),
                SizedBox(width: 20),
                SizedBox(
                  width: 170,
                  child: TextFieldView(
                    textController: _englishTextController,
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
                    textController: _kurdiTextController,
                    labelText: 'کوردی',
                  ),
                ),
                SizedBox(width: 20),
                SizedBox(
                  width: 170,
                  child: TextFieldView(
                    textController: _chemistryTextController,
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
                    textController: _biologyTextController,
                    labelText: 'زیندەوەرزانی',
                  ),
                ),
                SizedBox(width: 20),
                SizedBox(
                  width: 170,
                  child: TextFieldView(
                    textController: _physicTextController,
                    labelText: 'فیزیا',
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
                    textController: _arabicAndAiinTextController,
                    labelText: 'عەرەبی و ئایین',
                  ),
                ),
                SizedBox(width: 20),
                SizedBox(
                  width: 170,
                  child: null,
                )
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
