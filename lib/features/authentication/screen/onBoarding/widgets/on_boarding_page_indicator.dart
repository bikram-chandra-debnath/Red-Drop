import 'package:flutter/material.dart';
import 'package:red_drop_2/features/authentication/contorller/onboarding/onboarding_controller.dart';
import 'package:red_drop_2/utilities/helpers/device_helper.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingPageIndicator extends StatelessWidget {
   OnBoardingPageIndicator({
    super.key,
  });

  final controller = OnboardingController.instance;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: DeviceHelper.getScreenWidth(context)/3,
      left: DeviceHelper.getScreenWidth(context)/3,
      bottom: DeviceHelper.getBottomNavigationBarHeight() * 4,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNevigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
          dotHeight: 6.0,
          activeDotColor: Colors.redAccent,
        ),
    
      ),
    );
  }
}