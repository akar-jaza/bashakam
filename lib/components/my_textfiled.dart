import 'package:flutter/material.dart';

import '../constantes/colors.dart';

class MyTextField extends StatefulWidget {
  const MyTextField({
    Key? key,
    required TextEditingController textController,
    required this.labelText,
  })  : _textController = textController,
        super(key: key);

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
    return Directionality(
      textDirection: TextDirection.rtl,
      child: TextField(
        keyboardType: TextInputType.text,
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
          hintStyle: const TextStyle(
            color: ThemeColors.kGreyTextColor,
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: ThemeColors.kGreyTextColor,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: ThemeColors.kGreyTextColor,
            ),
          ),
          fillColor: ThemeColors.kMyCardColor,
          filled: true,
        ),
        enableInteractiveSelection: true,
        textDirection: TextDirection.rtl,
        textAlign: TextAlign.right,
      ),
    );
  }
}
