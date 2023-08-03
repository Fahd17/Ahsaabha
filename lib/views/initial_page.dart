// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ahsabha/custom_widget/custom_button.dart';
import 'package:ahsabha/custom_widget/custom_image.dart';
import 'package:ahsabha/views/sign_up_page.dart';
import 'package:flutter/material.dart';

import '../custom_widget/custom_title.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9EFE5),
      appBar: AppBar(
          backgroundColor: Color(0xffF9EFE5),
          elevation: 2,
          title: CustomTitle()),
      body: SafeArea(
        child: Column(children: [
          CustomImage(
              location: "assets/images/imageInit.png",
              width: MediaQuery.of(context).size.width,
              height: 350,
              isFromNetwork: false),
          Expanded(
            child: Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(children: [
                      Text(
                        "Easy Way Save",
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                          "Make your payment experinece better today. No additional admin fee.",
                          textAlign: TextAlign.center),
                    ]),
                    Column(children: [
                      CustomButton(
                        buttonText: "Login",
                        onPressed: () {},
                      ),
                      CustomButton(
                        buttonText: "Sign up",
                        backgroundColor: 0xffFFFFFF,
                        foregroundColor: 0xff010101,
                        borderColor: 0xff010101,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignUpPage(),
                            ),
                          );
                        },
                      ),
                    ]),
                  ],
                ),
              ),
          ),
        ]),
      ),
    );
  }
}
