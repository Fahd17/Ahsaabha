import 'package:ahsabha/custom_widget/custom_button.dart';
import 'package:ahsabha/custom_widget/custom_image.dart';
import 'package:ahsabha/custom_widget/custom_text_field.dart';
import 'package:ahsabha/app_statics/app_colors.dart';
import 'package:ahsabha/extensions/app_measurement.dart';
import 'package:ahsabha/extensions/navigation.dart';
import 'package:ahsabha/views/item_view.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: Column(
          children: [
            CustomImage(
                location: "assets/images/imageInit.png",
                width: MediaQuery.of(context).size.width,
                height: context.getHeight() / 2,
                isFromNetwork: false),
            Expanded(
                child: Container(
              width: context.getWidth(),
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextField(textFieldHint: "Email"),
                  CustomTextField(textFieldHint: "Password"),
                  SizedBox(height: 25,),
                  CustomButton(
                    buttonText: "Login",
                    onPressed: () {
                      context.navigateTo(ItemView());
                    },
                  ),
                  SizedBox(height: 100,),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
