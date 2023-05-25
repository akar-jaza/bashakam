// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:bashakam_barawzanko/Screens/nmrakanm.dart';
import 'package:bashakam_barawzanko/Screens/tomarkrdni_nmray_wezhay.dart';
import 'package:bashakam_barawzanko/Screens/tomarkrdni_nmray_zansty.dart';
import 'package:bashakam_barawzanko/constantes/Colors.dart';
import 'package:flutter/material.dart';

import '../components/my_card.dart';

class AdabayOr3ilmyPage extends StatelessWidget {
  const AdabayOr3ilmyPage({super.key});

  @override
  Widget build(BuildContext context) {
    ColorFile colorFile = ColorFile();

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
            '🧐 زانستیت یان ئەدەبی',
            style: TextStyle(color: colorFile.kWhiteTextColor),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyCard(
                  imageAsset: 'assets/images/ilmy.svg',
                  buttonTitle: 'ببینە',
                  color: colorFile.kWhiteTextColor,
                  text: 'زانستی',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const TomarkrdniNmrayZanstiPage()),
                    );
                  },
                ),
                MyCard(
                  imageAsset: 'assets/images/wezhayIcon.svg',
                  buttonTitle: 'ببینە',
                  color: colorFile.kWhiteTextColor,
                  text: 'وێژەیی',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const TomarkrdniNmrayWezhayPage()),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
