import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:red_drop_2/common/widgets/appbar/carve_appbart.dart';
import 'package:red_drop_2/features/home/controller/home_controller.dart';
import 'package:red_drop_2/features/home/screen/widgets/more_services.dart';
import 'package:red_drop_2/features/home/screen/widgets/news_slider.dart';
import 'package:red_drop_2/features/home/screen/widgets/top_contributor.dart';
import 'package:red_drop_2/utilities/constants/image.dart';
import 'package:red_drop_2/utilities/constants/size.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final controller = Get.put(HomeController());

    return Scaffold(
      // appBar: CustomAppBar(
      //   title: AppTexts.redDrop,
      //   centerTitle: true,
      //   leading: UserAvatar(),
      //   actions: [NotificationButton()],
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Custom appbar
            MyAppBar(title: "Red Drop", isBack: false),
        
            // News Slider
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
              child: AppNewsSlider(
                banners: [
                  AppImages.banner1,
                  AppImages.banner2,
                  AppImages.banner3,
                  AppImages.banner4,
                ],
              ),
            ),
            SizedBox(height: AppSizes.spaceBtwSections),
        
            // Top Contributors
            TopContributors(),
        
            SizedBox(height: AppSizes.spaceBtwSections / 2),

            // More services
        
            MoreServices(),
          ],
        ),
      ),
    );
  }
}

