import 'package:flutter/material.dart';
import 'package:red_drop_2/utilities/constants/colors.dart';
import 'package:red_drop_2/utilities/constants/size.dart';

class AppOutlinedButtonTheme {

  AppOutlinedButtonTheme._();

  static OutlinedButtonThemeData lightOutlinedButtonTheme = OutlinedButtonThemeData(

    style:  OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: AppColors.buttonPrimary,
      side:  const BorderSide(color: AppColors.borderPrimary2),
      textStyle:  const TextStyle(fontSize: 16,color: AppColors.black,fontWeight: FontWeight.w600),
      padding:  const EdgeInsets.symmetric(vertical: AppSizes.buttonHeight),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSizes.buttonRadius))
    )

  );
  static OutlinedButtonThemeData darkOutlinedButtonTheme = OutlinedButtonThemeData(

    style:  OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: AppColors.buttonPrimary,
      side:  const BorderSide(color: AppColors.borderPrimary2),
      textStyle:  const TextStyle(fontSize: 16,color: AppColors.textWhite,fontWeight: FontWeight.w600),
      padding:  const EdgeInsets.symmetric(vertical: AppSizes.buttonHeight),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSizes.buttonRadius))
    )

  );
}