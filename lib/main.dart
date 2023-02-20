import 'package:flutter/material.dart';
import 'package:responsive_layout/colors/colors.dart';
import 'package:responsive_layout/responsive/responsive_layour.dart';
import 'package:responsive_layout/screens/mobile_screen_layout.dart';
import 'package:responsive_layout/screens/web_screen_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp UI',
      theme:
          ThemeData.dark().copyWith(scaffoldBackgroundColor: backgroundColor),
      home: const ResponsiveLayout(
          webScreenLayout: WebScreenLayout(),
          mobileScreenLayout: MobileScreenLayout()),
    );
  }
}
