import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constantes/Colors.dart';

class TextFieldView extends StatelessWidget {
  const TextFieldView({
    super.key,
    required TextEditingController textController,
    required this.labelText,
  }) : _textController = textController;

  final TextEditingController _textController;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    ColorFile colorFile = ColorFile();

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextField(
        controller: _textController,
        cursorColor: colorFile.kblueColor,
        style: TextStyle(
          color: colorFile.kWhiteTextColor,
          fontFamily: 'Roboto',
        ),
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle:
              MaterialStateTextStyle.resolveWith((Set<MaterialState> states) {
            final Color color = states.contains(MaterialState.focused)
                ? Colors.white10
                : colorFile.kBoldBlueTextColor;
            return TextStyle(color: color);
          }),
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
        enableInteractiveSelection: true,
        keyboardType: TextInputType.number,
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter
              .digitsOnly // Restrict input to digits only
        ],
      ),
    );
  }
}
