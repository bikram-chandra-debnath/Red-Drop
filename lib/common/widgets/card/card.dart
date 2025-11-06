import 'package:flutter/material.dart';
import 'package:red_drop_2/utilities/constants/colors.dart';
import 'package:red_drop_2/utilities/helpers/helper_functions.dart';

class CardBox extends StatelessWidget {
  const CardBox({
    super.key,
    required this.child,
    this.margin =const EdgeInsets.all(5),
    this.height =120,
  });
  final Widget child;
  final EdgeInsetsGeometry margin;
  final double height;

  

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Container(
      margin: margin,
      height: height,
      width: double.infinity,
    
    
      decoration: BoxDecoration(
        color: dark == true? AppColors.dark: AppColors.white,
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withValues(alpha: 0.2),
            spreadRadius: 2,
            blurRadius: 6,
            offset: Offset(0,3)
          )
        ],
        
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 1, color: AppColors.primary),
      ),
      child: child,
    );
  }
}
