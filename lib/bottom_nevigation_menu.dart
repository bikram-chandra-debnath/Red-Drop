import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:red_drop_2/features/find_donor/screen/find_donor.dart';
import 'package:red_drop_2/features/home/screen/home_screen.dart';
import 'package:red_drop_2/features/message/screen/message_screen.dart';
import 'package:red_drop_2/features/settings/screen/settings_screen.dart';
import 'package:red_drop_2/utilities/constants/colors.dart';
import 'package:red_drop_2/utilities/helpers/helper_functions.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    final dark = AppHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: Obx(() => controller.screen[controller.selectedIndex.value]),

      bottomNavigationBar: Obx(
        () => NavigationBar(

          elevation: 0,
          selectedIndex: controller.selectedIndex.value,

          indicatorColor:
              dark
                  ? AppColors.light.withValues(alpha: 0.1)
                  : AppColors.dark.withValues(alpha: 0.1),
          backgroundColor: dark ? AppColors.dark : AppColors.light,
          onDestinationSelected: (value) {
            controller.selectedIndex.value = value;
          },


          destinations: [

            NavigationDestination(icon: Icon(Iconsax.home,), label: "Home",),
            NavigationDestination(icon: Icon(Iconsax.message), label: "Messages"),
            NavigationDestination(icon: Icon(Iconsax.global_search),label: "Find Donor",),
            
            NavigationDestination(icon: Icon(Iconsax.setting), label: "Settings"),
          ],
        ),
      ),
    );
  }
}

class NavigationController extends GetxController {
  RxInt selectedIndex = 0.obs;

  List<Widget> screen = [
    HomeScreen(),
    MessageScreen(),
    FindDonor(),
    SettingsScreen()
  ];
}
