import 'package:bashakam_barawzanko/components/my_textfiled.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../constantes/Colors.dart';
import '../../constantes/system_ui_overlay_func.dart';

class KamtrinKonmra extends StatefulWidget {
  const KamtrinKonmra({super.key});

  @override
  State<KamtrinKonmra> createState() => _KamtrinKonmraState();
}

class _KamtrinKonmraState extends State<KamtrinKonmra> {
  SystemUiOverlayFunc uiOverlayFunc = SystemUiOverlayFunc();
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    uiOverlayFunc.systemUiOverlay();
    return Scaffold(
      backgroundColor: ThemeColors.kBodyColor,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: ThemeColors.kWhiteTextColor),
        backgroundColor: ThemeColors.kBodyColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Align(
          alignment: Alignment.centerRight,
          child: Text(
            'کەمترین کۆنمرەی وەرگیراو',
            style: TextStyle(color: ThemeColors.kWhiteTextColor),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: MyTextField(
              textController: _textEditingController,
              labelText: '',
            ),
          ),
        ],
      ),
    );
  }
}
