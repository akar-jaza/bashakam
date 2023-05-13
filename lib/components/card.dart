// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:ffi';

import 'package:bashakam_barawzanko/constantes/Colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    super.key,
    required this.verticalMargin,
    required this.imageAsset,
    required this.title,
    required this.color,
    required this.text,
  });
  final double verticalMargin;
  final String imageAsset;
  final String title;
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    ColorFile colorFile = ColorFile();
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25, vertical: verticalMargin),
      height: 130,
      width: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: colorFile.kMyCardColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Text(
              text,
              style: TextStyle(color: colorFile.kWhiteTextColor),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 10),
            Flexible(
              child: SvgPicture.asset(
                imageAsset,
                width: 50,
              ),
            ),
            Text(
              title,
              style: TextStyle(
                fontFamily: 'rabarBold',
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
