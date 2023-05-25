import 'package:flutter/material.dart';
import 'package:headphones_project/screens/detail_screen.dart';
import 'package:headphones_project/screens/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
      // home: DetailScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
