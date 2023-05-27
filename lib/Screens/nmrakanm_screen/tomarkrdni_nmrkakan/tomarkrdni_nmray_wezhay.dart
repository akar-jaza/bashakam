// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bashakam_barawzanko/components/my_button.dart';
import 'package:bashakam_barawzanko/constantes/colors.dart';
import 'package:flutter/material.dart';

import '../../../components/my_textfiled.dart';

class TomarkrdniNmrayWezhayPage extends StatefulWidget {
  const TomarkrdniNmrayWezhayPage({super.key});

  @override
  State<TomarkrdniNmrayWezhayPage> createState() =>
      _TomarkrdniNmrayWezhayPageState();
}

class _TomarkrdniNmrayWezhayPageState extends State<TomarkrdniNmrayWezhayPage> {
  final TextEditingController _historyTextController = TextEditingController();
  final TextEditingController _kurdishTextController = TextEditingController();
  final TextEditingController _mathTextController = TextEditingController();
  final TextEditingController _geographyTextController =
      TextEditingController();
  final TextEditingController _economyTextController = TextEditingController();
  final TextEditingController _englishTextController = TextEditingController();
  final TextEditingController _arabicAndAiinTextController =
      TextEditingController();

  final FocusNode _historyFocusNode = FocusNode();
  final FocusNode _kurdishFocusNode = FocusNode();
  final FocusNode _mathFocusNode = FocusNode();
  final FocusNode _geographyFocusNode = FocusNode();
  final FocusNode _economyFocusNode = FocusNode();
  final FocusNode _englishFocusNode = FocusNode();
  final FocusNode _arabicAndAiinFocusNode = FocusNode();

  @override
  void dispose() {
    _historyTextController.dispose();
    _kurdishTextController.dispose();
    _mathTextController.dispose();
    _geographyTextController.dispose();
    _economyTextController.dispose();
    _englishTextController.dispose();
    _arabicAndAiinTextController.dispose();

    _historyFocusNode.dispose();
    _kurdishFocusNode.dispose();
    _mathFocusNode.dispose();
    _geographyFocusNode.dispose();
    _economyFocusNode.dispose();
    _englishFocusNode.dispose();
    _arabicAndAiinFocusNode.dispose();

    super.dispose();
  }

  static double wezhayFinalScore = 0;

  Color _historyTextfieldcolor = ThemeColors.kOutlinedTextfieldColor;
  Color _kurdishTextfieldcolor = ThemeColors.kOutlinedTextfieldColor;
  Color _mathTextfieldcolor = ThemeColors.kOutlinedTextfieldColor;
  Color _geographyTextfieldcolor = ThemeColors.kOutlinedTextfieldColor;
  Color _economyTextfieldcolor = ThemeColors.kOutlinedTextfieldColor;
  Color _arabicAndAiinTextfieldcolor = ThemeColors.kOutlinedTextfieldColor;
  Color _englishTextfieldcolor = ThemeColors.kOutlinedTextfieldColor;

  void _calculateFinalScore() {
    double historyScore = double.tryParse(_mathTextController.text) ?? 0;
    double kuridshScore = double.tryParse(_englishTextController.text) ?? 0;
    double mathScore = double.tryParse(_mathTextController.text) ?? 0;
    double geographyScore = double.tryParse(_geographyTextController.text) ?? 0;
    double economyScore = double.tryParse(_economyTextController.text) ?? 0;
    double englishScore = double.tryParse(_englishTextController.text) ?? 0;
    double arabicAndAiinScore =
        double.tryParse(_arabicAndAiinTextController.text) ?? 0;

    wezhayFinalScore = historyScore +
        kuridshScore +
        mathScore +
        geographyScore +
        economyScore +
        arabicAndAiinScore +
        englishScore;

    // setState(() {});
    print(wezhayFinalScore);
  }

  void _validateFields() {
    bool anyFieldIsEmpty = false;

    if (_mathTextController.text.isEmpty) {
      anyFieldIsEmpty = true;
      _mathTextfieldcolor = ThemeColors.kTextfieledIsEmptyColor;
    } else {
      _mathTextfieldcolor = ThemeColors
          .kblueColor; // Update to the original color when field is not empty
    }
    if (_englishTextController.text.isEmpty) {
      anyFieldIsEmpty = true;
      _englishTextfieldcolor = ThemeColors.kTextfieledIsEmptyColor;
    } else {
      _englishTextfieldcolor = ThemeColors
          .kblueColor; // Update to the original color when field is not empty
    }
    if (_kurdishTextController.text.isEmpty) {
      anyFieldIsEmpty = true;
      _kurdishTextfieldcolor = ThemeColors.kTextfieledIsEmptyColor;
    } else {
      _kurdishTextfieldcolor = ThemeColors
          .kblueColor; // Update to the original color when field is not empty
    }
    if (_geographyTextController.text.isEmpty) {
      anyFieldIsEmpty = true;
      _geographyTextfieldcolor = ThemeColors.kTextfieledIsEmptyColor;
    } else {
      _geographyTextfieldcolor = ThemeColors
          .kblueColor; // Update to the original color when field is not empty
    }
    if (_economyTextController.text.isEmpty) {
      anyFieldIsEmpty = true;
      _economyTextfieldcolor = ThemeColors.kTextfieledIsEmptyColor;
    } else {
      _economyTextfieldcolor = ThemeColors
          .kblueColor; // Update to the original color when field is not empty
    }
    if (_historyTextController.text.isEmpty) {
      anyFieldIsEmpty = true;
      _historyTextfieldcolor = ThemeColors.kTextfieledIsEmptyColor;
    } else {
      _historyTextfieldcolor = ThemeColors
          .kblueColor; // Update to the original color when field is not empty
    }
    if (_arabicAndAiinTextController.text.isEmpty) {
      anyFieldIsEmpty = true;
      _arabicAndAiinTextfieldcolor = ThemeColors.kTextfieledIsEmptyColor;
    } else {
      _arabicAndAiinTextfieldcolor = ThemeColors
          .kblueColor; // Update to the original color when field is not empty
    }

    setState(() {
      // Trigger a rebuild to update text field colors
      _mathTextfieldcolor = _mathTextfieldcolor;
      _englishTextfieldcolor = _englishTextfieldcolor;
      _kurdishTextfieldcolor = _kurdishTextfieldcolor;
      _historyTextfieldcolor = _historyTextfieldcolor;
      _economyTextfieldcolor = _economyTextfieldcolor;
      _geographyTextfieldcolor = _geographyTextfieldcolor;
      _arabicAndAiinTextfieldcolor = _arabicAndAiinTextfieldcolor;
    });

    if (anyFieldIsEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: ThemeColors.kTextfieledIsEmptyColor,
          content: Text(
            'تکایە نمرەی وانەکان تۆمار بکە و بە بەتاڵی جێی مەهێڵە',
            textAlign: TextAlign.end,
            style: TextStyle(
              fontFamily: 'rabarBold',
              color: Colors.black,
            ),
          ),
        ),
      );
      return;
    }
  }

  void _dismissKeyboard() {
    FocusScope.of(context).unfocus();
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
                    textController: _historyTextController,
                    labelText: 'مێژوو',
                    color: _historyTextfieldcolor,
                  ),
                ),
                SizedBox(width: 20),
                SizedBox(
                  width: 170,
                  child: MyTextField(
                    textController: _kurdishTextController,
                    labelText: 'کوردی',
                    color: _kurdishTextfieldcolor,
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
                    textController: _mathTextController,
                    labelText: 'بیرکاری',
                    color: _mathTextfieldcolor,
                  ),
                ),
                SizedBox(width: 20),
                SizedBox(
                  width: 170,
                  child: MyTextField(
                    textController: _geographyTextController,
                    labelText: 'ئایین و زمانی عەرەبی',
                    color: _arabicAndAiinTextfieldcolor,
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
                    textController: _economyTextController,
                    labelText: 'ئابووری',
                    color: _economyTextfieldcolor,
                  ),
                ),
                SizedBox(width: 20),
                SizedBox(
                  width: 170,
                  child: MyTextField(
                    textController: _englishTextController,
                    labelText: 'ئینگلیزی',
                    color: _englishTextfieldcolor,
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
                    textController: _geographyTextController,
                    labelText: 'جوگرافیا',
                    color: _geographyTextfieldcolor,
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
                _dismissKeyboard();
                _validateFields();
                _calculateFinalScore();
              },
            )
          ],
        ),
      ),
    );
  }
}
