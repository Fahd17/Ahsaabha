// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({super.key, this.title = "EasySave"});

  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset("assets/logos/logo.png"),
          SizedBox(
            width: 8,
          ),
          Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ]);
  }
}
