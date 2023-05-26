// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bashakam_barawzanko/components/my_button.dart';
import 'package:bashakam_barawzanko/constantes/colors.dart';
import 'package:flutter/material.dart';

import '../../components/my_textfiled.dart';

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

  @override
  void dispose() {
    _historyTextController.dispose();
    _kurdishTextController.dispose();
    _mathTextController.dispose();
    _geographyTextController.dispose();
    _economyTextController.dispose();
    _englishTextController.dispose();
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
                  child: MyTextField(
                    textController: _historyTextController,
                    labelText: 'مێژوو',
                  ),
                ),
                SizedBox(width: 20),
                SizedBox(
                  width: 170,
                  child: MyTextField(
                    textController: _kurdishTextController,
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
                  child: MyTextField(
                    textController: _mathTextController,
                    labelText: 'بیرکاری',
                  ),
                ),
                SizedBox(width: 20),
                SizedBox(
                  width: 170,
                  child: MyTextField(
                    textController: _geographyTextController,
                    labelText: 'ئایین و زمانی عەرەبی',
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
                  ),
                ),
                SizedBox(width: 20),
                SizedBox(
                  width: 170,
                  child: MyTextField(
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
                  child: MyTextField(
                    textController: _geographyTextController,
                    labelText: 'جوگرافیا',
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
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
