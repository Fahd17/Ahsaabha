// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

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
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        fixedSize: Size(
                          MediaQuery.of(context).size.width-50, 
                          40
                          )
                      ),
                      child: Text("Login"),
                    ),
                    ElevatedButton(onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        side: BorderSide(color: Colors.black),
                        fixedSize: Size(
                          MediaQuery.of(context).size.width-50, 
                          40
                          )
                      ),
                     child: Text("Sign up")
                     ),
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
