// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, must_be_immutable

import 'package:bashakam_barawzanko/components/lesson_card.dart';
import 'package:bashakam_barawzanko/constantes/colors.dart';
import 'package:flutter/material.dart';

import '../../Modals/lesson_modal.dart';

class ScorePage extends StatefulWidget {
  final List<LessonModal> lessons;

  ScorePage({
    super.key,
    required this.lessons,
  });

  @override
  _ScorePageState createState() => _ScorePageState();
}

class _ScorePageState extends State<ScorePage> {
  @override
  void initState() {
    super.initState();
    // mathScore = (widget.lessons.isNotEmpty ? widget.lessons[0].score : null);
  }

  @override
  Widget build(BuildContext context) {
    double mathScore = 1;
    return Scaffold(
      backgroundColor: ThemeColors.kBodyColor,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: ThemeColors.kWhiteTextColor),
        backgroundColor: ThemeColors.kBodyColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Align(
          alignment: Alignment.centerRight,
          child: Text(
            'نمرەکانم',
            style: TextStyle(color: ThemeColors.kWhiteTextColor),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LessonCard(
                  color: ThemeColors.kWhiteTextColor,
                  text: 'بیرکاری',
                  onTap: () {},
                  lessonScore: mathScore.toInt().toString(),
                ),
                LessonCard(
                  color: ThemeColors.kWhiteTextColor,
                  text: 'ئینگلیزی',
                  onTap: () {},
                  lessonScore: '',
                ),
              ],
            ),
            Text(
              'Math Score: ${mathScore.toString()}',
              style: TextStyle(
                color: ThemeColors.kWhiteTextColor,
              ),
            ),

            // Display other scores similarly
          ],
        ),
      ),
    );
  }
}
