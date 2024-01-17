import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_example/pages/home.dart';
import 'package:flutter_ecommerce_example/pages/intro.dart';

void main() {
  runApp(const EcommerceApp());
}

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const IntroPage(),
        '/home': (context) => const HomePage(),
      }
    );
  }
}

