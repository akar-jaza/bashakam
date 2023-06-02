// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

import '../../Modals/lesson_modal.dart';

class ScorePage extends StatelessWidget {
  final List<LessonModal> lessons;
  // final double mathScore;
  final double englishScore;

  ScorePage({
    required this.lessons,
    // required this.mathScore,
    required this.englishScore,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Score Page'),
      ),
      body: Container(
        child: Column(
          children: [
            Text('Math Score: ${mathScore.toString()}'),
            Text('English Score: ${englishScore.toString()}'),
            // Display other scores similarly
          ],
        ),
      ),
    );
  }
}
