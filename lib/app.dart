import 'package:flutter/material.dart';
import 'package:headphones_project/screens/home_screen.dart';
import 'package:headphones_project/screens/product_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const HomePage(),
        '/product': (context) => const ProductPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
