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
            '🧐 زانستیت یان وێژەیی',
            style: TextStyle(color: ThemeColors.kWhiteTextColor),
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
