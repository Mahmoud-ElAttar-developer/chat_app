import 'package:chat_app/spalch_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SpalchScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
