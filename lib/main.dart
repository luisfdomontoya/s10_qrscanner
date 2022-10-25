import 'package:flutter/material.dart';
import 'package:s10_qrscanner/pages/home_page.dart';
import 'package:s10_qrscanner/pages/map_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'QR Reader',
      initialRoute: 'home',
      routes: {
        'home': (context) => const HomePage(),
        'map': (context) => const MapPage(),
      },
    );
  }
}
