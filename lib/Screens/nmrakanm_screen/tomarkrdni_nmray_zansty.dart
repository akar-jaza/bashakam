// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:bashakam_barawzanko/components/my_button.dart';
import 'package:bashakam_barawzanko/constantes/colors.dart';
import 'package:flutter/material.dart';

import '../../components/my_textfiled.dart';

class TomarkrdniNmrayZanstiPage extends StatefulWidget {
  const TomarkrdniNmrayZanstiPage({super.key});

  @override
  State<TomarkrdniNmrayZanstiPage> createState() =>
      _TomarkrdniNmrayZanstiPageState();
}

class _TomarkrdniNmrayZanstiPageState extends State<TomarkrdniNmrayZanstiPage> {
  final TextEditingController _mathTextController = TextEditingController();
  final TextEditingController _englishTextController = TextEditingController();
  final TextEditingController _kurdiTextController = TextEditingController();
  final TextEditingController _chemistryTextController =
      TextEditingController();
  final TextEditingController _biologyTextController = TextEditingController();
  final TextEditingController _physicTextController = TextEditingController();
  final TextEditingController _arabicAndAiinTextController =
      TextEditingController();

  static double zanstyFinalScore = 0;

  bool _isButtonPressed = false;
  bool _isEmpty = false;

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
  void initState() {
    super.initState();
    _mathTextController.addListener(_updateEmptyStatus);
    _updateEmptyStatus();
  }

  void _updateEmptyStatus() {
    setState(() {
      _isEmpty = _mathTextController.text.isEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.kBodyColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: ThemeColors.kWhiteTextColor),
        backgroundColor: ThemeColors.kBodyColor,
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
            style: TextStyle(color: ThemeColors.kWhiteTextColor),
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
                  child: MyTextField(
                    textController: _mathTextController,
                    labelText: 'بیرکاری',
                    isButtonPressed: _isButtonPressed,
                    color: (_isEmpty && _isButtonPressed)
                        ? Colors.red
                        : ThemeColors.kblueColor,
                  ),
                ),
                SizedBox(width: 20),
                SizedBox(
                  width: 170,
                  child: MyTextField(
                    textController: _englishTextController,
                    labelText: 'ئینگلیزی',
                    isButtonPressed: _isButtonPressed,
                    color: (_isEmpty && _isButtonPressed)
                        ? Colors.red
                        : ThemeColors.kblueColor,
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
                  child: MyTextField(
                    textController: _kurdiTextController,
                    labelText: 'کوردی',
                    isButtonPressed: _isButtonPressed,
                    color: (_isEmpty && _isButtonPressed)
                        ? Colors.red
                        : ThemeColors.kblueColor,
                  ),
                ),
                SizedBox(width: 20),
                SizedBox(
                  width: 170,
                  child: MyTextField(
                    textController: _chemistryTextController,
                    labelText: 'کیمیا',
                    isButtonPressed: _isButtonPressed,
                    color: (_isEmpty && _isButtonPressed)
                        ? Colors.red
                        : ThemeColors.kblueColor,
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
                  child: MyTextField(
                    textController: _biologyTextController,
                    labelText: 'زیندەوەرزانی',
                    isButtonPressed: _isButtonPressed,
                    color: (_isEmpty && _isButtonPressed)
                        ? Colors.red
                        : ThemeColors.kblueColor,
                  ),
                ),
                SizedBox(width: 20),
                SizedBox(
                  width: 170,
                  child: MyTextField(
                    textController: _physicTextController,
                    labelText: 'فیزیا',
                    isButtonPressed: _isButtonPressed,
                    color: (_isEmpty && _isButtonPressed)
                        ? Colors.red
                        : ThemeColors.kblueColor,
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
                  child: MyTextField(
                    textController: _arabicAndAiinTextController,
                    labelText: 'عەرەبی و ئایین',
                    isButtonPressed: _isButtonPressed,
                    color: (_isEmpty && _isButtonPressed)
                        ? Colors.red
                        : ThemeColors.kblueColor,
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
            MyButton(
              onPressed: () {
                if (_mathTextController.text.isEmpty ||
                    _englishTextController.text.isEmpty ||
                    _kurdiTextController.text.isEmpty ||
                    _chemistryTextController.text.isEmpty ||
                    _biologyTextController.text.isEmpty ||
                    _physicTextController.text.isEmpty ||
                    _arabicAndAiinTextController.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'تکایە نمرەی وانەکان تۆمار بکە و بە بەتاڵی جێی مەهێڵە',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontFamily: 'rabarBold',
                        ),
                      ),
                    ),
                  );
                  return;
                }
                double mathScore =
                    double.tryParse(_mathTextController.text) ?? 0;
                double englishScore =
                    double.tryParse(_englishTextController.text) ?? 0;
                double kurdiScore =
                    double.tryParse(_kurdiTextController.text) ?? 0;
                double chemistryScore =
                    double.tryParse(_chemistryTextController.text) ?? 0;
                double biologyScore =
                    double.tryParse(_biologyTextController.text) ?? 0;
                double physicScore =
                    double.tryParse(_physicTextController.text) ?? 0;
                double arabicAndAiinScore =
                    double.tryParse(_arabicAndAiinTextController.text) ?? 0;

                zanstyFinalScore = mathScore +
                    englishScore +
                    kurdiScore +
                    chemistryScore +
                    biologyScore +
                    physicScore +
                    arabicAndAiinScore;

                setState(() {
                  _isButtonPressed = true;
                });
                print(zanstyFinalScore);
              },
            ),
          ],
        ),
      ),
    );
  }
}
