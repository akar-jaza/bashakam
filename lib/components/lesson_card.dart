import 'package:bashakam_barawzanko/constantes/colors.dart';
import 'package:flutter/material.dart';

class LessonCard extends StatelessWidget {
  const LessonCard({
    super.key,
    this.verticalMargin,
    required this.color,
    required this.text,
    this.onTap,
  });
  final double? verticalMargin;
  final Color color;
  final String text;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: ThemeColors.kappBarColor,
      borderRadius: BorderRadius.circular(6),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 7, vertical: 10),
        height: 160,
        width: 135,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: ThemeColors.kMyCardColor,
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
                  style: const TextStyle(
                      color: ThemeColors.kWhiteTextColor, fontSize: 13),
                ),
              ),
            ),
            const SizedBox(height: 15),
            const SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: onTap,
              child: const Text(
                'نمرە',
                style: TextStyle(color: ThemeColors.kblueColor),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: onTap,
              child: const Text(
                'دەستکاری',
                style: TextStyle(color: ThemeColors.kblueColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
