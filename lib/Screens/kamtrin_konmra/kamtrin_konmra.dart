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
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: MyTextField(
              textController: _textEditingController,
              labelText: 'ناوی بەش یاخود کۆنمرە بنووسە',
            ),
          ),
          SvgPicture.asset(
            'assets/images/ListIsEmpty.svg',
            height: 350,
          ),
          const Text(
            '! نمرەکانت تۆمار نەکراوە',
            style: TextStyle(
              color: ThemeColors.kWhiteTextColor,
              fontSize: 18,
            ),
          ),
          const Text(
            '.تکایە نمرەکانت تۆمار بکە',
            style: TextStyle(
              color: ThemeColors.kWhiteTextColor,
              fontSize: 18,
            ),
          ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Transform.translate(
            offset: const Offset(
                20, -25), // Adjust the vertical offset as per your requirement
            child: SvgPicture.asset(
              'assets/images/arrow.svg',
              height: 50,
            ),
          ),
          const SizedBox(
            width: 50,
          ),
          FloatingActionButton(
            backgroundColor: ThemeColors.kblueColor,
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
