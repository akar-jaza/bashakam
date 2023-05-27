// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:bashakam_barawzanko/Screens/nmrakanm_screen/tomarkrdni_nmrkakan/tomarkrdni_nmray_wezhay.dart';
import 'package:bashakam_barawzanko/Screens/nmrakanm_screen/tomarkrdni_nmrkakan/tomarkrdni_nmray_zansty.dart';
import 'package:bashakam_barawzanko/constantes/colors.dart';
import 'package:flutter/material.dart';

import '../../../components/my_card.dart';

class AdabayOr3ilmyPage extends StatelessWidget {
  const AdabayOr3ilmyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.kBodyColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: ThemeColors.kWhiteTextColor),
        backgroundColor: ThemeColors.kBodyColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Align(
          alignment: Alignment.centerRight,
          child: Text.rich(
            TextSpan(
              text: '🧐',
              style: TextStyle(
                color: ThemeColors.kWhiteTextColor,
                fontFamily: 'AppleEmoji',
              ),
              children: [
                TextSpan(
                  text: ' زانستیت یان وێژەیی',
                  style: TextStyle(
                    fontFamily: 'rabarBold',
                  ),
                ),
              ],
            ),
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
                  color: ThemeColors.kWhiteTextColor,
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
                  color: ThemeColors.kWhiteTextColor,
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
