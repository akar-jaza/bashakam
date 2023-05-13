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
    required this.buttonTitle,
    required this.color,
    required this.text,
  });
  final double verticalMargin;
  final String imageAsset;
  final String buttonTitle;
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    ColorFile colorFile = ColorFile();
    return InkWell(
      onTap: () {},
      onLongPress: () {},
      splashColor: colorFile.kblueColor,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 7, vertical: verticalMargin),
        height: 140,
        width: 135,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: colorFile.kMyCardColor,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerRight, // Aligns child to the right
                child: Text(
                  text,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: colorFile.kWhiteTextColor,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Flexible(
              child: SvgPicture.asset(
                imageAsset,
                height: 100,
              ),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {},
              child: Text(
                buttonTitle,
                style: TextStyle(color: colorFile.kblueColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
