import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constantes/colors.dart';

class MyTextField extends StatefulWidget {
  const MyTextField({
    super.key,
    required TextEditingController textController,
    required this.labelText,
  }) : _textController = textController;

  final TextEditingController _textController;
  final String labelText;

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextField(
        controller: widget._textController,
        cursorColor: ThemeColors.kblueColor,
        style: const TextStyle(
          color: ThemeColors.kWhiteTextColor,
          fontFamily: 'Roboto',
        ),
        decoration: InputDecoration(
          labelText: widget.labelText,
          labelStyle: const TextStyle(
            color: ThemeColors.kGreyTextColor,
            fontSize: 14,
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: ThemeColors.kWhiteTextColor),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: ThemeColors.kblueColor,
            ),
          ),
          fillColor: ThemeColors.kMyCardColor,
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
