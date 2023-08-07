import 'package:ahsabha/views/pre_authentication/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'views/pre_authentication/initial_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: (InitialPage()));
  }
}
