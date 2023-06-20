import 'package:bashakam_barawzanko/Screens/kamtrin_konmra/kamtrin_konmra.dart';
import 'package:bashakam_barawzanko/constantes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../components/my_card.dart';
import '../constantes/system_ui_overlay_func.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  SystemUiOverlayFunc uiOverlayFunc = SystemUiOverlayFunc();

  @override
  void initState() {
    super.initState();
    uiOverlayFunc.systemUiOverlay();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ThemeColors.kBodyColor,
        appBar: AppBar(
          backgroundColor: ThemeColors.kBodyColor,
          title: const Center(
            child: Text(
              '🎓 بەشەکەم',
              style: TextStyle(
                fontSize: 18,
                color: ThemeColors.kWhiteTextColor,
                fontFamily: 'rabarBold',
              ),
            ),
          ),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                color: Colors.white,
                icon: const Icon(
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
          physics: const BouncingScrollPhysics(),
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 25,
                ),
                SvgPicture.asset(
                  'assets/images/cats.svg',
                  width: 200,
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'ڕیزبەندی بکە لەگەڵ ئەپڵیکەیشنی',
                  style: TextStyle(
                    fontSize: 18,
                    color: ThemeColors.kWhiteTextColor,
                    fontFamily: 'rabarBold',
                  ),
                ),
                const Text(
                  '🎓 بەشەکەم',
                  style: TextStyle(
                    fontSize: 18,
                    color: ThemeColors.kWhiteTextColor,
                    fontFamily: 'rabarBold',
                  ),
                ),
                const SizedBox(height: 15),
                const Text(
                  'ڕیزبەندی بکە، ڕیزبەندیەکانت ببینە، زانیاری لەسەر بەشەکان ببینە',
                  style: TextStyle(
                    color: ThemeColors.kGreyTextColor,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyCard(
                      imageAsset: 'assets/images/list3.svg',
                      buttonTitle: 'ببینە',
                      color: ThemeColors.kWhiteTextColor,
                      text: 'کەمترین کۆنمرە',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const KamtrinKonmra()),
                        );
                      },
                    ),
                    MyCard(
                      imageAsset: 'assets/images/id.svg',
                      buttonTitle: 'ببینە',
                      color: ThemeColors.kWhiteTextColor,
                      text: 'نمرەکانم',
                      onTap: () {},
                    ),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyCard(
                      imageAsset: 'assets/images/zarabin.svg',
                      buttonTitle: 'ببینە',
                      color: ThemeColors.kWhiteTextColor,
                      text: 'ڕیزبەندیەکانم',
                    ),
                    MyCard(
                      imageAsset: 'assets/images/departments.svg',
                      buttonTitle: 'ببینە',
                      color: ThemeColors.kWhiteTextColor,
                      text: 'بەشەکان',
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
