import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Steam Watcher")),
      body: Center(child: Text("Acompanhe atualizações dos seus jogos! 🚀")),
    );
  }
}
