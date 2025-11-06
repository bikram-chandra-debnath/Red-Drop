import 'package:flutter/material.dart';
import 'package:red_drop_2/common/style/padding.dart';
import 'package:red_drop_2/common/widgets/login%20&%20signup/login_signup_divider.dart';
import 'package:red_drop_2/common/widgets/login%20&%20signup/login_signup_social_buttons.dart';
import 'package:red_drop_2/features/authentication/screen/login/widgets/login_form.dart';
import 'package:red_drop_2/common/widgets/login%20&%20signup/login_signup_header.dart';
import 'package:red_drop_2/utilities/constants/size.dart';
import 'package:red_drop_2/utilities/constants/text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    
    return Scaffold(
      appBar: AppBar(),
      
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: AppPadding.screenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //--------[Title & Subtitle]-------
              AppLoginSignUpHeader(title: AppTexts.loginTitle, subtitle: AppTexts.loginSubtitle,),
                
              SizedBox(height: AppSizes.spaceBtwSections),
                
              //---------[Form]-------
              AppLoginForm(),
                
              SizedBox(height: AppSizes.spaceBtwSections),
              // -----[ or sign in with]-------
              AppFormDivider( title: AppTexts.orSignInWith,),
                
              SizedBox(height: AppSizes.spaceBtwSections,),
              // -----[Social buttons]------
              AppLoginSignUpSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}



