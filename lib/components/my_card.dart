// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:bashakam_barawzanko/constantes/Colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    super.key,
    this.verticalMargin,
    required this.imageAsset,
    required this.buttonTitle,
    required this.color,
    required this.text,
    this.onTap,
  });
  final double? verticalMargin;
  final String imageAsset;
  final String buttonTitle;
  final Color color;
  final String text;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    ColorFile colorFile = ColorFile();
    return InkWell(
      onTap: onTap,
      splashColor: colorFile.kappBarColor,
      borderRadius: BorderRadius.circular(6),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 7, vertical: 10),
        height: 150,
        width: 135,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: colorFile.kMyCardColor,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              child: Align(
                alignment: Alignment.centerRight, // Aligns child to the right
                child: Text(
                  text,
                  textAlign: TextAlign.right,
                  style:
                      TextStyle(color: colorFile.kWhiteTextColor, fontSize: 13),
                ),
              ),
            ),
            SizedBox(height: 15),
            SvgPicture.asset(
              imageAsset,
              height: 50,
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: onTap,
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
