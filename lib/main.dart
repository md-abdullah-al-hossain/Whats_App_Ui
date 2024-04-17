
import 'package:flutter/material.dart';
import 'package:whats_app_ui/responsive/responsive_leyout.dart';
import 'package:whats_app_ui/screens/mobile_screen_layout.dart';
import 'package:whats_app_ui/screens/web_screen_layout.dart';
import 'package:whats_app_ui/theme/app_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whats App',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: const ResponsiveLayout(
        mobileScreenLayout: MobileScreenLayout(),
        webScreenLayout: WebScreenLayout(),
      ),
    );
  }
}
