// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9EFE5),
      appBar: AppBar(
        backgroundColor: Color(0xffF9EFE5),
        elevation: 2,
        title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset("assets/logos/logo.png"),
          SizedBox(
            width: 8,
          ),
          Text(
            "EasySave",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ]),
      ),
      body: SafeArea(
        child: Column(children: [
          Image.asset(
            "assets/images/imageInit.png",
            width: MediaQuery.of(context).size.width,
            height: 350,
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              
            ),
          ),
        ]),
      ),
    );
  }
}
