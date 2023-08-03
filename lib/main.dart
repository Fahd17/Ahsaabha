import 'package:ahsabha/views/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'views/initial_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: (SignUpPage()));
  }
}
