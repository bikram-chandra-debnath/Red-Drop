import 'package:flutter/material.dart';
import 'package:red_drop_2/common/style/padding.dart';
import 'package:red_drop_2/common/widgets/login%20&%20signup/login_signup_divider.dart';
import 'package:red_drop_2/common/widgets/login%20&%20signup/login_signup_header.dart';
import 'package:red_drop_2/common/widgets/login%20&%20signup/login_signup_social_buttons.dart';
import 'package:red_drop_2/features/authentication/screen/signup/widgets/signup_form.dart';
import 'package:red_drop_2/utilities/constants/size.dart';
import 'package:red_drop_2/utilities/constants/text.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppPadding.screenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Sign up Header
              AppLoginSignUpHeader(title: AppTexts.signUpTitle, subtitle: AppTexts.signUpsubtitle),

              SizedBox(height: AppSizes.spaceBtwItems),

              // -----[Form]----
              AppSignUpForm(),

              // -------[Divider]-----
              AppFormDivider(title: AppTexts.orSignUpWith),

              SizedBox(height: AppSizes.spaceBtwSections),

              // -------[Social Buttons]-----
              AppLoginSignUpSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}

