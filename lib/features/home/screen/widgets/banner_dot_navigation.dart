import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:red_drop_2/features/home/controller/home_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BannerDotNavigation extends StatelessWidget {
  const BannerDotNavigation({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = HomeController.instance;
    return Obx(()=> SmoothPageIndicator(
        controller: PageController(initialPage:  controller.currentIndex.value),
        count: 4,
        effect: ExpandingDotsEffect(dotHeight: 6.0),
      ),
    );
  }
}
