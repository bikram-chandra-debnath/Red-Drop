import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:red_drop_2/common/widgets/buttons/elevated_button.dart';
import 'package:red_drop_2/features/authentication/contorller/onboarding/onboarding_controller.dart';
import 'package:red_drop_2/utilities/constants/size.dart';

class OnBoardingNextButton extends StatelessWidget {
  OnBoardingNextButton({super.key});

  final controller = OnboardingController.instance;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: AppSizes.spaceBtwItems * 2,
      left: 0,
      right: 0,
      child: AppElevatedButton(
        onPressed: controller.nextPage,
        child: Obx(
          () => Text(controller.currentIndex.value == 2 ? "Get Started" : "Next"),
        ),
      ),
    );
  }
}
