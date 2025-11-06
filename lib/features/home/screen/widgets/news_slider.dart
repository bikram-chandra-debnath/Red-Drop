// ignore_for_file: unused_import

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:red_drop_2/common/widgets/image/rounded_image.dart';
import 'package:red_drop_2/features/home/controller/home_controller.dart';
import 'package:red_drop_2/features/home/screen/widgets/banner_dot_navigation.dart';
import 'package:red_drop_2/utilities/constants/image.dart';
import 'package:red_drop_2/utilities/constants/size.dart';

class AppNewsSlider extends StatelessWidget {
  const AppNewsSlider({super.key, required this.banners});

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = HomeController.instance;
    return Column(
      children: [
        CarouselSlider(
          carouselController: controller.carouselController,
          items:
              banners
                  .map((banner) => AppRoundedImage(imageUrl: banner))
                  .toList(),
          options: CarouselOptions(
            viewportFraction: 1.0,
            autoPlay: true,
            onPageChanged: (index, reason) => controller.onPageChanged(index),
          ),
        ),
        SizedBox(height: AppSizes.spaceBtwItems),
        BannerDotNavigation(),
      ],
    );
  }
}
