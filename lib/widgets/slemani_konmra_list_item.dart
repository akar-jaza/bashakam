import 'package:flutter/material.dart';
import 'package:bashakam_barawzanko/constantes/them_colors.dart';

class SlemaniKonmraListItem extends StatelessWidget {
  final List<String> departmentName;
  final List<String> parezga;
  final List<String> gshty;
  final int index;

  const SlemaniKonmraListItem({
    super.key,
    required this.departmentName,
    required this.parezga,
    required this.gshty,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    if (index.isOdd) {
      // Odd index represents the divider
      return const Divider(
        color: Color.fromARGB(72, 197, 198, 209),
      );
    } else {
      final itemIndex = index ~/ 2;

      if (itemIndex >= departmentName.length) {
        // Return an empty SizedBox
        return const SizedBox.shrink();
      }
      return ListTile(
        title: Text(
          departmentName[itemIndex],
          style: const TextStyle(
            color: ThemeColors.kWhiteTextColor,
          ),
          textAlign: TextAlign.center,
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(
              'پارێزگا: ${parezga[itemIndex]}',
              style: const TextStyle(color: ThemeColors.kWhiteTextColor),
            ),
            Text(
              'گشتی: ${gshty[itemIndex]}',
              style: const TextStyle(color: ThemeColors.kWhiteTextColor),
            ),
          ],
        ),
      );
    }
  }
}
