import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constantes/Colors.dart';

class myAppBar extends StatelessWidget implements PreferredSizeWidget {
  const myAppBar({
    super.key,
  });
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(color: ThemeColors.kWhiteTextColor),
      backgroundColor: ThemeColors.kBodyColor,
      surfaceTintColor: ThemeColors.kblueColor,
      leading: Platform.isIOS
          ? CupertinoNavigationBarBackButton(
              color: ThemeColors.kWhiteTextColor,
              onPressed: () {
                Navigator.pop(context);
              },
            )
          : IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
      title: const Align(
        alignment: Alignment.centerRight,
        child: Text(
          'کەمترین کۆنمرەی وەرگیراو',
          style: TextStyle(color: ThemeColors.kWhiteTextColor),
        ),
      ),
    );
  }
}
