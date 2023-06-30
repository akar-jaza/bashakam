import 'package:bashakam_barawzanko/constantes/colors.dart';
import 'package:flutter/material.dart';
import 'Screens/home_page.dart';
import 'constantes/system_ui_overlay_func.dart';

void main() {
  SystemUiOverlayFunc uiOverlayFunc = SystemUiOverlayFunc();
  uiOverlayFunc.systemUiOverlay();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'rabarBold',
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: ThemeColors.kblueColor,
        ),
      ),
      home: const HomePage(),
    );
  }
}
