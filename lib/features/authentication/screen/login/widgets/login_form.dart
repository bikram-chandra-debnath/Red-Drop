import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:red_drop_2/bottom_nevigation_menu.dart';
import 'package:red_drop_2/common/widgets/buttons/elevated_button.dart';
import 'package:red_drop_2/features/authentication/screen/forget_password/forget_password.dart';
import 'package:red_drop_2/features/authentication/screen/signup/signup.dart';
import 'package:red_drop_2/utilities/constants/size.dart';
import 'package:red_drop_2/utilities/constants/text.dart';

class AppLoginForm extends StatelessWidget {
  const AppLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Email
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.direct_right),
            labelText: AppTexts.email,
          ),
        ),
    
        SizedBox(height: AppSizes.spaceBtwInputFields),
    
        //Password
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.password_check),
            labelText: AppTexts.password,
            suffixIcon: Icon(Iconsax.eye),
          ),
        ),
        SizedBox(height: AppSizes.spaceBtwInputFields / 2),
    
        // ------[Remember Me & Forget password]-----
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Remember Me
            Row(
              children: [
                Checkbox(value: true, onChanged: (value) {}),
                Text(AppTexts.rememberMe),
              ],
            ),
            // Forget password
            TextButton(
              onPressed: ()=> Get.to(ForgetPasswordScreen()),
              child: Text(AppTexts.forgetPassword),
            ),
          ],
        ),
    
        SizedBox(height: AppSizes.spaceBtwSections),
    
        //-------[Sign in & Create Account ]----------
        AppElevatedButton(
          onPressed: () {
            Get.offAll(NavigationMenu());
          },
          child: Text(AppTexts.signIn),
        ),
        SizedBox(height: AppSizes.spaceBtwItems / 2),

        // -----[Create Account]------
        SizedBox(
          width: double.infinity,
          child: OutlinedButton(
            onPressed: ()=> Get.to(Signup()),
            child: Text(AppTexts.createAccount),
          ),
        ),
      ],
    );
  }
}

