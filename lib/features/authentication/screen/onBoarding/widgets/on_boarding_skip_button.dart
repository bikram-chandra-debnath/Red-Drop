import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:red_drop_2/features/authentication/contorller/onboarding/onboarding_controller.dart';
import 'package:red_drop_2/utilities/helpers/device_helper.dart';

class OnBoardingSkipButton extends StatelessWidget {
   OnBoardingSkipButton({
    super.key,
  });

  final controller = OnboardingController.instance;

  @override
  Widget build(BuildContext context) {
    return Obx( ()=>
    controller.currentIndex.value==2? SizedBox():
       Positioned(
        top: DeviceHelper.getAppBarHeight(),
        right: 0,
        child: TextButton(onPressed: controller.skipPage, child: Text("Skip"),)),
    );
  }
}

