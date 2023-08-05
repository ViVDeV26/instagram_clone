import 'package:flutter/material.dart';
import 'package:instagram_clone/responsive/mobile_responsive_layout.dart';
import 'package:instagram_clone/responsive/responsive_layout.dart';
import 'package:instagram_clone/responsive/web_responsive_layout.dart';

import 'package:instagram_clone/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram clone',
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
      home: const ResponsiveLayout(webScreenLayout:WebScreenLayout() , mobileScreenLayout:MobileScreenLayout() ),
    );
  }
}