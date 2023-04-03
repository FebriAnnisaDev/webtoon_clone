import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'module/bottom_navigation_bar/view/bottom_navigation_bar_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          brightness: Brightness.dark,
          accentColor: Colors.grey.shade500,
        ),
        indicatorColor: Colors.blue,
        brightness: Brightness.dark,
        canvasColor: const Color.fromRGBO(23, 23, 23, 100),
      ),
      // home: const TestView(),

      home: const BottomNavigationBarView(),
    );
  }
}
