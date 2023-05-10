// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
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
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu),
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
              icon: const Icon(Icons.settings_outlined),
            ),
          ],
        ),
        body: Center(
          child: Column(
            children: [
              const MyCard(imageAsset: 'assets/images/listcc.svg', verticalMargin: 20, title: 'ڕیزبەندی', color: Color(0xFFB5ECF5),),
              const MyCard(imageAsset: 'assets/images/listcc.svg', verticalMargin: 0, title: 'ڕیزبەندی', color: Color(0xFF9CF8C1)),
            ],
          ),
        ),
      ),
    );
  }
}
