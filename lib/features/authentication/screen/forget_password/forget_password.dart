import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:red_drop_2/common/style/padding.dart';
import 'package:red_drop_2/common/widgets/buttons/elevated_button.dart';
import 'package:red_drop_2/common/widgets/login%20&%20signup/login_signup_header.dart';
import 'package:red_drop_2/common/widgets/login%20&%20signup/email_verify.dart';
import 'package:red_drop_2/common/widgets/successful.dart';
import 'package:red_drop_2/features/authentication/screen/login/login.dart';
import 'package:red_drop_2/utilities/constants/image.dart';
import 'package:red_drop_2/utilities/constants/size.dart';
import 'package:red_drop_2/utilities/constants/text.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppPadding.screenPadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ----[Header]----
              AppLoginSignUpHeader(
                title: AppTexts.forgetPasswordTitle,
                subtitle: AppTexts.forgetPasswordsubtitle,
              ),
              SizedBox(height: AppSizes.spaceBtwSections * 2),

              // ----[ Form]----
              Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Iconsax.direct_right),
                      labelText: AppTexts.email,
                    ),
                  ),
                  SizedBox(height: AppSizes.spaceBtwItems),

                  AppElevatedButton(
                    onPressed:
                        () => Get.to(
                          EmailVerify(
                            title: AppTexts.passwordResetTitle,
                            subtitle: AppTexts.passwordResetSubtitle,
                            image: AppImages.verifyEmail,
                            onPressed: () {
                              Get.to(
                                () => Successful(
                                  image: AppImages.successful,
                                  title:AppTexts.passwordRecoveredSuccessfullyTitle,
                                  subtitle:AppTexts.passwordRecoveredSuccessfullySubitle,
                                  onPressed:
                                      () => Get.offAll(() => LoginScreen()),
                                ),
                              );
                            },
                          ),
                        ),
                    child: Text(AppTexts.submit),
                  ),
                ],
              ),

              //
            ],
          ),
        ),
      ),
    );
  }
}
