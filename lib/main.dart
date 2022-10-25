import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:s10_qrscanner/pages/home_page.dart';
import 'package:s10_qrscanner/pages/map_page.dart';
import 'package:s10_qrscanner/providers/ui_provider.dart';

void main() => runApp(const AppState());

class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => new UiProvider())
      ],
      child: const MyApp(),
    );
  }
}

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
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Colors.deepPurple,
        ),
        appBarTheme: const AppBarTheme(
          color: Colors.deepPurple,
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.deepPurple,
        ),
      ),
    );
  }
}
