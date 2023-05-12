// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'components/card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF1A120B),
        appBar: AppBar(
          backgroundColor: Color(0xff1A120B),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                color: Colors.white,
                icon: Icon(CupertinoIcons.line_horizontal_3),
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
              icon: const Icon(
                CupertinoIcons.settings_solid,
              ),
              color: Colors.white,
            ),
          ],
        ),
        body: Center(
          child: Column(
            children: [
              const MyCard(
                imageAsset: 'assets/images/list2.svg',
                verticalMargin: 20,
                title: 'ڕیزبەندیەکانم',
                color: Color(0xFFB5ECF5),
              ),
              const MyCard(
                imageAsset: 'assets/images/calc.svg',
                verticalMargin: 0,
                title: 'ڕیزبەندی بکە بەپێی نمرە',
                color: Color(0xFFE8A0BF),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
