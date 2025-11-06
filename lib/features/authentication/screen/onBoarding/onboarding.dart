import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:red_drop_2/features/authentication/contorller/onboarding/onboarding_controller.dart';
import 'package:red_drop_2/features/authentication/screen/onBoarding/widgets/on_boarding_next_button.dart';
import 'package:red_drop_2/features/authentication/screen/onBoarding/widgets/on_boarding_page.dart';
import 'package:red_drop_2/features/authentication/screen/onBoarding/widgets/on_boarding_page_indicator.dart';
import 'package:red_drop_2/features/authentication/screen/onBoarding/widgets/on_boarding_skip_button.dart';
import 'package:red_drop_2/utilities/constants/image.dart';
import 'package:red_drop_2/utilities/constants/size.dart';
import 'package:red_drop_2/utilities/constants/text.dart';

class OnboardingScreen extends StatelessWidget {
   OnboardingScreen({super.key});

  final controller = Get.put(OnboardingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
        child: Stack(
          
          children: [
            // ------[Animations]----
            PageView(
              controller:  controller.pageController,
              onPageChanged: controller.updatePageIndicator,
              children: [
                OnBoardingPage(
                  animation: AppImages.onBoardingAnimation1,
                  title: AppTexts.onBoardingTitle1,
                  subtitle: AppTexts.onBoardingSubtitle1,
                ),
                OnBoardingPage(
                  animation: AppImages.onBoardingAnimation2,
                  title: AppTexts.onBoardingTitle2,
                  subtitle: AppTexts.onBoardingSubtitle2,
                ),
                OnBoardingPage(
                  animation: AppImages.onBoardingAnimation3,
                  title: AppTexts.onBoardingTitle3,
                  subtitle: AppTexts.onBoardingSubtitle3,
                ),
              ],
            ),

            //-------[Page indicator]----
            OnBoardingPageIndicator(),

            // ------[Next Button]-----

            OnBoardingNextButton(),
          

            //-----[Skip Button]---

            OnBoardingSkipButton()


          ],
        ),
      ),
    );
  }
}

