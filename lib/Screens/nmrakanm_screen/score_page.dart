// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

import '../../Modals/lesson_modal.dart';

class ScorePage extends StatefulWidget {
  final List<LessonModal> lessons;
  double? englishScore;

  ScorePage({
    required this.lessons,
    this.englishScore,
  });

  @override
  _ScorePageState createState() => _ScorePageState();
}

class _ScorePageState extends State<ScorePage> {
  late double mathScore;

  @override
  void initState() {
    super.initState();
    mathScore = widget.lessons.isNotEmpty ? widget.lessons[0].score : 0.0;
  }

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
            Text('English Score: ${widget.englishScore.toString()}'),
            // Display other scores similarly
          ],
        ),
      ),
    );
  }
}
