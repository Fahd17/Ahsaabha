import 'package:ahsabha/app_statics/app_colors.dart';
import 'package:ahsabha/custom_widget/custom_image.dart';
import 'package:ahsabha/custom_widget/custom_text.dart';
import 'package:ahsabha/custom_widget/custom_title.dart';
import 'package:ahsabha/extensions/app_measurement.dart';
import 'package:flutter/material.dart';

class ItemView extends StatelessWidget {
  const ItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
        foregroundColor: AppColors.blackColor,
      ),
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Container(
                height: context.getHeight() * 0.35,
                child: const CustomImage(
                  location: "assets/images/cleaningImage.png",
                  height: 150,
                  width: 150,
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: AppColors.secondlyColor,
                width: context.getWidth(),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 16,
                    ),
                    CustomText(
                      text: "Cleaning tools",
                      fontSize: 26,
                      isBold: true,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    CustomText(
                      text: "ادوات تنظيف",
                      fontSize: 22,
                    ),
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: "Count: 2",
                            fontSize: 22,
                          ),
                          CustomText(
                            text: "Price: 24 RS",
                            fontSize: 22,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    CustomImage(location: "assets/images/QRCode.PNG",
                    height: 150,
                    width: 150,)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
