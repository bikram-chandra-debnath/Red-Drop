import 'package:flutter/material.dart';
import 'package:red_drop_2/utilities/constants/colors.dart';
import 'package:red_drop_2/utilities/theme/widgets_theme/appbar_theme.dart';
import 'package:red_drop_2/utilities/theme/widgets_theme/bottom_sheet_theme.dart';
import 'package:red_drop_2/utilities/theme/widgets_theme/check_box_theme.dart';
import 'package:red_drop_2/utilities/theme/widgets_theme/chip_theme.dart';
import 'package:red_drop_2/utilities/theme/widgets_theme/elevated_button_theme.dart';
import 'package:red_drop_2/utilities/theme/widgets_theme/outline_button_theme.dart';
import 'package:red_drop_2/utilities/theme/widgets_theme/text_field_theme.dart';
import 'package:red_drop_2/utilities/theme/widgets_theme/text_them.dart';

class AppTheme{


  AppTheme._();

  static ThemeData lightMode = ThemeData(
      useMaterial3: true,
      fontFamily: "Nunito",
      brightness: Brightness.light,
      primaryColor: AppColors.primary,
      disabledColor: AppColors.grey,
      scaffoldBackgroundColor: AppColors.white,
      textTheme: AppTextTheme.lightTextTheme,
      elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButton,
      chipTheme: AppChipTheme.lightChipTheme,
      appBarTheme: AppbarTheme.lightAppBarTheme ,
      checkboxTheme: AppCheckBoxTheme.lightCheckBoxTheme,
      bottomSheetTheme: AppBottomSheetTheme.lightBottomSheetTheme,
      outlinedButtonTheme: AppOutlinedButtonTheme.lightOutlinedButtonTheme,
      inputDecorationTheme: AppTextFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkMode = ThemeData(
      useMaterial3: true,
      fontFamily: "Nunito",
      brightness: Brightness.dark,
      primaryColor: AppColors.primary,
      disabledColor: AppColors.grey,
      scaffoldBackgroundColor: AppColors.black,
      textTheme: AppTextTheme.darkTextTheme,
      elevatedButtonTheme: AppElevatedButtonTheme.darktElevatedButton,
      chipTheme: AppChipTheme.darkChipTheme,
      appBarTheme: AppbarTheme.darkAppBarTheme,
      checkboxTheme: AppCheckBoxTheme.darkCheckBoxTheme,
      bottomSheetTheme:AppBottomSheetTheme.darkBottomSheetTheme,
      outlinedButtonTheme: AppOutlinedButtonTheme.darkOutlinedButtonTheme,
      inputDecorationTheme: AppTextFieldTheme.darkInputDecorationTheme,
  );


}

