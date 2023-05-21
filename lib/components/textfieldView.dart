import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Theme(
        data: ThemeData(
            textSelectionTheme: TextSelectionThemeData(
                cursorColor: colorFile.kblueColor, // Set the cursor color
                selectionColor: colorFile.kWhiteTextColor,
                selectionHandleColor: colorFile.kWhiteTextColor,
                )),
        child: TextField(
          controller: _textController,
          cursorColor: colorFile.kblueColor,
          style: TextStyle(
            color: colorFile.kWhiteTextColor,
            fontFamily: 'Roboto',
          ),
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
          enableInteractiveSelection: true,
          keyboardType: TextInputType.number,
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter
                .digitsOnly // Restrict input to digits only
          ],
        ),
      ),
    );
  }
}
