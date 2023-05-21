import 'package:flutter/material.dart';

import '../constantes/Colors.dart';

class TextFieldView extends StatelessWidget {
  const TextFieldView({
    super.key,
    required TextEditingController textController,
    required this.colorFile,
  }) : _textController = textController;

  final TextEditingController _textController;
  final ColorFile colorFile;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _textController,
      cursorColor: colorFile.kblueColor,
      style: TextStyle(color: colorFile.kWhiteTextColor),
      decoration: InputDecoration(
        labelText: 'وانە',
        contentPadding:
            const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: colorFile.kMyCardColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: colorFile.kMyCardColor),
        ),
        fillColor: colorFile.kMyCardColor,
        filled: true,
      ),
    );
  }
}
