import 'package:flutter/services.dart';
import 'package:bashakam_barawzanko/constantes/Colors.dart';

class SystemUiOverlayFunc {
  void systemUiOverlay() {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(
        systemNavigationBarColor: ThemeColors.kBodyColor,
        statusBarColor: ThemeColors.kBodyColor,
        statusBarIconBrightness:
            Brightness.light, // Set the icon brightness to light
        systemNavigationBarIconBrightness: Brightness
            .light, // Set the system navigation bar icon brightness to light
      ),
    );
  }
}
