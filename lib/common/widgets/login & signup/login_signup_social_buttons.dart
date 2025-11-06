import 'package:flutter/material.dart';
import 'package:red_drop_2/utilities/constants/colors.dart';
import 'package:red_drop_2/utilities/constants/image.dart';
import 'package:red_drop_2/utilities/constants/size.dart';

class AppLoginSignUpSocialButtons extends StatelessWidget {
  const AppLoginSignUpSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        buildButton(AppImages.googleIcon ,(){}),
        
        SizedBox(width: AppSizes.spaceBtwItems,),
        
        buildButton(AppImages.facebookIcon ,(){}),
        
      ],
    );
  }
}


Container buildButton(String image, VoidCallback onPressed ){
  return Container(
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
    
          child: IconButton(
            onPressed:onPressed,
            icon: Image.asset(
              image,
              height: AppSizes.iconmd,
              width: AppSizes.iconmd,
            ),
          ),
        );
}
