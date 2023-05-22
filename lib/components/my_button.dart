import 'package:bashakam_barawzanko/constantes/Colors.dart';
import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  const MyButton({super.key});

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  ColorFile colorFile = ColorFile();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 300,
      child: FilledButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(colorFile.kblueColor),
            foregroundColor:
                MaterialStateProperty.all(colorFile.kBoldBlueTextColor)),
        onPressed: () {},
        child: const Text(
          'تۆمار بکە',
          style: TextStyle(fontSize: 14),
        ),
      ),
    );
  }
}
