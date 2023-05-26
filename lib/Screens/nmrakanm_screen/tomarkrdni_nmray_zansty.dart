// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:bashakam_barawzanko/components/my_button.dart';
import 'package:bashakam_barawzanko/constantes/colors.dart';
import 'package:flutter/material.dart';

import '../../components/textfield_view.dart';

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
            MyButton(
              onPressed: () {
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

                setState(() {});
                print(zanstyFinalScore);
              },
            ),
          ],
        ),
      ),
    );
  }
}
