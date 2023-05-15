import 'package:flutter/services.dart';
import 'package:bashakam_barawzanko/constantes/Colors.dart';

class SystemUiOverlayFunc {
  final ColorFile _colorFile = ColorFile();
  void systemUiOverlay() {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(
        systemNavigationBarColor: _colorFile.kbodyColor,
        statusBarColor: _colorFile.kbodyColor,
        statusBarIconBrightness:
            Brightness.light, // Set the icon brightness to light
        systemNavigationBarIconBrightness: Brightness
            .light, // Set the system navigation bar icon brightness to light
      ),
    );
  }
}
