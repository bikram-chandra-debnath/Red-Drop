import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:red_drop_2/common/shape/custom_shape_appbar.dart';
import 'package:red_drop_2/utilities/constants/colors.dart';
import 'package:red_drop_2/utilities/constants/size.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    super.key, 
    required this.title, 
    this.isBack = true});

  final String title;
  final bool isBack;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyCustomShape(),
      child: Container(
        height: AppSizes.appBarHeight + 20,
        width: double.infinity,
        decoration: BoxDecoration(color: AppColors.primary),

        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSizes.defaultSpace / 2,
          ),
          child: Row(
            children: [
              isBack
                  ? IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(Iconsax.arrow_left, color: AppColors.white),
                  )
                  : SizedBox(width: AppSizes.spaceBtwItems,),

              Expanded(
                child: Text(
                  title,
                  style: Theme.of(
                    context,
                  ).textTheme.headlineMedium!.apply(color: AppColors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
