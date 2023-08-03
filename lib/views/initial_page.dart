// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ahsabha/custom_widget/custom_button.dart';
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
        title: TitleWidget()),
      body: SafeArea(
        child: Column(children: [
          Image.asset(
            "assets/images/imageInit.png",
            width: MediaQuery.of(context).size.width,
            height: 350,
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(children: [
                    Text("Easy Way Save", 
                      style: TextStyle(
                      fontSize: 25,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text("Make your payment experinece better today. No additional admin fee.",
                      textAlign: TextAlign.center
                    ),
                  ]),
                  Column(children: [
                    CustomButton(buttonText: "Login"),
                    CustomButton(buttonText: "Sign up", backgroundColor: 0xffFFFFFF,
                    foregroundColor: 0xff010101, borderColor: 0xff010101),
                  ]),
                ],
              )
            ),
          ),
        ]),
      ),
    );
  }
}

class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key, this.title = "EasySave"});

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
