// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:bashakam_barawzanko/constantes/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'components/card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ColorFile colorFile = ColorFile();

  @override
  Widget build(BuildContext context) {
    void systemUiOverlay() {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.dark.copyWith(
          systemNavigationBarColor: colorFile.kbodyColor,
          statusBarColor: colorFile.kbodyColor,
          statusBarIconBrightness:
              Brightness.light, // Set the icon brightness to light
          systemNavigationBarIconBrightness: Brightness
              .light, // Set the system navigation bar icon brightness to light
        ),
      );
    }

    systemUiOverlay();

    return SafeArea(
      child: Scaffold(
        backgroundColor: colorFile.kbodyColor,
        appBar: AppBar(
          backgroundColor: colorFile.kbodyColor,
          title: Center(
            child: Text(
              '🎓 بەشەکەم',
              style: TextStyle(
                fontSize: 18,
                color: colorFile.kWhiteTextColor,
                fontFamily: 'rabarBold',
              ),
            ),
          ),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                color: Colors.white,
                icon: Icon(
                  Icons.menu_outlined,
                  size: 18,
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: IconButton(
                onPressed: () {},
                icon: ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Image.asset(
                    'assets/images/flo.png',
                  ),
                ),
              ),
              color: Colors.white,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 25,
                ),
                SvgPicture.asset(
                  'assets/images/cats.svg',
                  width: 200,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'ڕیزبەندی بکە لەگەڵ ئەپڵیکەیشنی',
                  style: TextStyle(
                    fontSize: 18,
                    color: colorFile.kWhiteTextColor,
                    fontFamily: 'rabarBold',
                  ),
                ),
                Text(
                  '🎓 بەشەکەم',
                  style: TextStyle(
                    fontSize: 18,
                    color: colorFile.kWhiteTextColor,
                    fontFamily: 'rabarBold',
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  'ڕیزبەندی بکە، ڕیزبەندیاکانت ببینە، زانیاری لەسەر بەشەکان ببینە',
                  style: TextStyle(
                    color: colorFile.kGreyTextColor,
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyCard(
                      imageAsset: 'assets/images/list3.svg',
                      buttonTitle: 'بکە',
                      color: colorFile.kWhiteTextColor,
                      text: 'ڕیزبەندی بکە',
                    ),
                    MyCard(
                      imageAsset: 'assets/images/zarabin.svg',
                      buttonTitle: 'ببینە',
                      color: colorFile.kWhiteTextColor,
                      text: 'ڕیزبەندیەکانم',
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyCard(
                      imageAsset: 'assets/images/list3.svg',
                      buttonTitle: 'بکە',
                      color: colorFile.kWhiteTextColor,
                      text: 'ڕیزبەندی بکە',
                    ),
                    MyCard(
                      imageAsset: 'assets/images/zarabin.svg',
                      buttonTitle: 'ببینە',
                      color: colorFile.kWhiteTextColor,
                      text: 'ڕیزبەندیەکانم',
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyCard(
                      imageAsset: 'assets/images/list3.svg',
                      buttonTitle: 'بکە',
                      color: colorFile.kWhiteTextColor,
                      text: 'ڕیزبەندی بکە',
                    ),
                    MyCard(
                      imageAsset: 'assets/images/zarabin.svg',
                      buttonTitle: 'ببینە',
                      color: colorFile.kWhiteTextColor,
                      text: 'ڕیزبەندیەکانم',
                    ),
                  ],
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
