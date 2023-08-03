// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ahsabha/custom_widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:ahsabha/custom_widget/custom_text_field.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9EFE5),
      body: SafeArea(
        child: Column(
          children: [
            Image.asset( 
              "assets/images/imageSignUp.png",
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/2,
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2,
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    CustomTextField(textFieldHint: "Email"),
                    CustomTextField(textFieldHint: "Password"),
                    CustomTextField(textFieldHint: "Password"),
                    SizedBox(
                      height: 30,
                    ),
                    CustomButton(buttonText: "Sign up")

                  ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
