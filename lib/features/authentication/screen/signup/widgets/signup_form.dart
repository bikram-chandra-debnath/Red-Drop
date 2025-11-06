import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:red_drop_2/common/widgets/buttons/elevated_button.dart';
import 'package:red_drop_2/common/widgets/login%20&%20signup/email_verify.dart';
import 'package:red_drop_2/common/widgets/successful.dart';
import 'package:red_drop_2/features/authentication/screen/login/login.dart';
import 'package:red_drop_2/features/authentication/screen/signup/widgets/pricacy_policy_checkbox.dart';
import 'package:red_drop_2/utilities/constants/image.dart';
import 'package:red_drop_2/utilities/constants/size.dart';
import 'package:red_drop_2/utilities/constants/text.dart';

class AppSignUpForm extends StatelessWidget {
  const AppSignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            // ---------[first name and last name]------
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.user),
                  labelText: AppTexts.firstName,
                ),
              ),
            ),
            SizedBox(width: AppSizes.spaceBtwInputFields),
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.user),
                  labelText: AppTexts.lastName,
                ),
              ),
            ),
          ],
        ),

        SizedBox(height: AppSizes.spaceBtwInputFields),

        //--------[Email]------
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.direct_right),
            labelText: AppTexts.email,
          ),
        ),
        SizedBox(height: AppSizes.spaceBtwInputFields),
        //--------[Phone Number]------
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.call),
            labelText: AppTexts.phoneNumber,
          ),
        ),
        SizedBox(height: AppSizes.spaceBtwInputFields),

        //--------[Password]------
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.password_check),
            labelText: AppTexts.password,
          ),
        ),
        SizedBox(height: AppSizes.spaceBtwInputFields / 2),

        // //--------[Privacy policy checkbox]------
        PrivacyPolicyCheckBox(),
        SizedBox(height: AppSizes.spaceBtwItems), // ------[Create Account]----

        AppElevatedButton(
          onPressed:() => Get.to(
                          EmailVerify(
                            title: AppTexts.emailSentTitle,
                            subtitle: AppTexts.emailSentsubtitle,
                            image: AppImages.verifyEmail,
                            onPressed: () {
                              Get.to(
                                () => Successful(
                                  image: AppImages.successful,
                                  title:AppTexts.emailVerificationSuccessfullyTitle,
                                  subtitle:AppTexts.emailVerificationSuccessfullySubitle,
                                  onPressed:
                                      () => Get.offAll(() => LoginScreen()),
                                ),
                              );
                            },
                          ),
                        ),
          child: Text(AppTexts.createAccount),
        ),

        SizedBox(height: AppSizes.spaceBtwSections),
      ],
    );
  }
}
