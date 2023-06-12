// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, must_be_immutable

import 'package:bashakam_barawzanko/components/lesson_card.dart';
import 'package:bashakam_barawzanko/constantes/colors.dart';
import 'package:flutter/material.dart';

import '../../Modals/lesson_modal.dart';

class ScorePage extends StatefulWidget {
  final List<LessonModal> lessons;
  final double englishScore;
  final double mathScore;

  ScorePage({
    super.key,
    required this.lessons,
    required this.englishScore,
    required this.mathScore,
  });

  @override
  _ScorePageState createState() => _ScorePageState();
}

class _ScorePageState extends State<ScorePage> {
  double? mathScore;
  double? englishScore;

  @override
  void initState() {
    super.initState();
    if (widget.lessons.isNotEmpty) {
      setState(() {
        mathScore = widget.mathScore;
        englishScore = widget.englishScore;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
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
        child: SingleChildScrollView(
          physics:
              BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
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
                    text: 'زیندەوەرزانی',
                    onTap: () {},
                    lessonScore: mathScore?.toInt().toString() ?? 'null',
                    // lessonScore: mathScore.toInt().toString(),
                  ),
                  LessonCard(
                    color: ThemeColors.kWhiteTextColor,
                    text: 'کوردی',
                    onTap: () {},
                    lessonScore: englishScore?.toInt().toString() ?? 'null',
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LessonCard(
                    color: ThemeColors.kWhiteTextColor,
                    text: 'بیرکاری',
                    onTap: () {},
                    lessonScore: mathScore?.toInt().toString() ?? 'null',
                    // lessonScore: mathScore.toInt().toString(),
                  ),
                  LessonCard(
                    color: ThemeColors.kWhiteTextColor,
                    text: 'ئایین و عەرەبی',
                    onTap: () {},
                    lessonScore: englishScore?.toInt().toString() ?? 'null',
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LessonCard(
                    color: ThemeColors.kWhiteTextColor,
                    text: 'کیمیا',
                    onTap: () {},
                    lessonScore: mathScore?.toInt().toString() ?? 'null',
                    // lessonScore: mathScore.toInt().toString(),
                  ),
                  LessonCard(
                    color: ThemeColors.kWhiteTextColor,
                    text: 'ئینگلیزی',
                    onTap: () {},
                    lessonScore: englishScore?.toInt().toString() ?? 'null',
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LessonCard(
                    color: ThemeColors.kWhiteTextColor,
                    text: 'فیزیا',
                    onTap: () {},
                    lessonScore: mathScore?.toInt().toString() ?? 'null',
                    // lessonScore: mathScore.toInt().toString(),
                  ),
                  LessonCard(
                    color: ThemeColors.kWhiteTextColor,
                    text: 'ئینگلیزی',
                    onTap: () {},
                    lessonScore: englishScore?.toInt().toString() ?? 'null',
                  ),
                ],
              ),

              // Display other scores similarly
            ],
          ),
        ),
      ),
    );
  }
}
