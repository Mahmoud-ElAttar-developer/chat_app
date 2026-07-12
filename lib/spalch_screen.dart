import 'package:chat_app/login_view.dart';
import 'package:flutter/material.dart';

class SpalchScreen extends StatefulWidget {
  const SpalchScreen({super.key});

  @override
  State<SpalchScreen> createState() => _SpalchScreenState();
}

class _SpalchScreenState extends State<SpalchScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 6), () {
      if (!mounted) return;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginView()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        'assets/joker-the-joker-28092759-500-281.jpg',
        fit: BoxFit.cover,
        height: double.infinity,
        width: double.infinity,
      ),
    );
  }
}
