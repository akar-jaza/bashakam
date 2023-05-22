// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:bashakam_barawzanko/Screens/ababy_or_3ilmy.dart';
import 'package:bashakam_barawzanko/constantes/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constantes/SystemUiOverlayFunc.dart';

class Nmrakanm extends StatefulWidget {
  const Nmrakanm({super.key});

  @override
  State<Nmrakanm> createState() => _NmrakanmState();
}

class _NmrakanmState extends State<Nmrakanm> {
  ColorFile colorFile = ColorFile();
  SystemUiOverlayFunc uiOverlayFunc = SystemUiOverlayFunc();

  @override
  Widget build(BuildContext context) {
    uiOverlayFunc.systemUiOverlay();
    return Scaffold(
      backgroundColor: colorFile.kbodyColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: colorFile.kWhiteTextColor),
        backgroundColor: colorFile.kbodyColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Align(
          alignment: Alignment.centerRight,
          child: Text(
            'نمرەکانم',
            style: TextStyle(color: colorFile.kWhiteTextColor),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/images/ListIsEmpty.svg',
              height: 350,
            ),
            Text(
              '! نمرەکانت تۆمار نەکراوە',
              style: TextStyle(
                color: colorFile.kWhiteTextColor,
                fontSize: 18,
              ),
            ),
            Text(
              '.تکایە نمرەکانت تۆمار بکە',
              style: TextStyle(
                color: colorFile.kWhiteTextColor,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Transform.translate(
            offset: Offset(
                20, -25), // Adjust the vertical offset as per your requirement
            child: SvgPicture.asset(
              'assets/images/arrow.svg',
              height: 50,
            ),
          ),
          SizedBox(
            width: 50,
          ),
          FloatingActionButton(
            backgroundColor: colorFile.kblueColor,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const AdabayOr3ilmyPage()),
              );
            },
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
