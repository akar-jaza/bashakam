import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constantes/colors.dart';

class MyTextField extends StatefulWidget {
  const MyTextField(
      {Key? key,
      required TextEditingController textController,
      required this.labelText,
      required this.isButtonPressed,
      required this.color})
      : _textController = textController,
        super(key: key);

  final TextEditingController _textController;
  final String labelText;
  final bool isButtonPressed;
  final Color color;

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  bool _isEmpty = false;

  @override
  void initState() {
    super.initState();
    widget._textController.addListener(_updateEmptyStatus);
    _updateEmptyStatus();
  }

  @override
  void dispose() {
    widget._textController.removeListener(_updateEmptyStatus);
    super.dispose();
  }

  void _updateEmptyStatus() {
    setState(() {
      _isEmpty = widget._textController.text.isEmpty;
    });
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
          contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: widget.color,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: widget.color,
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
