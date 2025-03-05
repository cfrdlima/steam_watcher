import 'package:flutter/material.dart';
import 'package:steam_watcher/presentation/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Steam Watcher',
      theme: ThemeData.dark(),
      themeMode: ThemeMode.dark, // Força o tema escuro
      home: SplashScreen(),
    );
  }
}
