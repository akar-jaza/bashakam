import 'package:flutter/material.dart';

class ScorePage extends StatefulWidget {
  final double mathScore;
  final double englishScore;
  // Add other score variables here

  ScorePage({required this.mathScore, required this.englishScore});

  @override
  _ScorePageState createState() => _ScorePageState();
}

class _ScorePageState extends State<ScorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Score Page'),
      ),
      body: Container(
        child: Column(
          children: [
            Text('Math Score: ${widget.mathScore.toString()}'),
            Text('English Score: ${widget.englishScore.toString()}'),
            // Display other scores similarly
          ],
        ),
      ),
    );
  }
}
