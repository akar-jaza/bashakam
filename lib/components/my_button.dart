import 'dart:ffi';

import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  const MyButton({super.key});

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 300,
      child: FilledButton(
        onPressed: () {},
        child: Text('تۆمار بکە'),
      ),
    );
  }
}
