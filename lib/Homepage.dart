import 'package:flutter/material.dart';

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
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 35, horizontal: 30),
                height: 140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFF5FCCA0),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
