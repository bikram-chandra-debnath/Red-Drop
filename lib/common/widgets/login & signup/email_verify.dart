import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:lottie/lottie.dart';
import 'package:red_drop_2/common/style/padding.dart';
import 'package:red_drop_2/common/widgets/buttons/elevated_button.dart';
import 'package:red_drop_2/features/authentication/screen/login/login.dart';
import 'package:red_drop_2/utilities/constants/size.dart';
import 'package:red_drop_2/utilities/constants/text.dart';

class EmailVerify extends StatelessWidget {
  const EmailVerify({super.key, required this.title, required this.subtitle, required this.onPressed, required this.image});

  final String title,subtitle,image;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: AppSizes.spaceBtwItems),
            child: IconButton(
              onPressed: () => Get.offAll(LoginScreen()),
              icon: Icon(CupertinoIcons.clear),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppPadding.screenPadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ----[Image]-------
              Lottie.asset(image),
              SizedBox(height: AppSizes.spaceBtwItems),
              // ----[title and subtitle]-------
              Column(
    children: [
      Text(   //---[title]---
                title,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: AppSizes.spaceBtwItems),
              // ----[email]-------
              Text(
                "usermail@gmail.com",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(height: AppSizes.spaceBtwItems),

              // ----[subtile]-------
              Text(
                subtitle,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall,
              ),
    ],
  ),
              SizedBox(height: AppSizes.spaceBtwSections),
              // ----[done and resend email buttons]
              Column(
                children: [
                  // ----[done]-------
              AppElevatedButton(onPressed: onPressed, child: Text(AppTexts.done)),
              // ------[Resend Email]---
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: Text(AppTexts.resendEmail),
                ),
              ),
                ],
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}




