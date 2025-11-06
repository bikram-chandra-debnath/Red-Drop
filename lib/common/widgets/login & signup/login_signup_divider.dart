import 'package:flutter/material.dart';
import 'package:red_drop_2/utilities/constants/colors.dart';
import 'package:red_drop_2/utilities/helpers/helper_functions.dart';

class AppFormDivider extends StatelessWidget {
  const AppFormDivider({
    super.key, required this.title,
    
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        Expanded(child: Divider(indent: 60, endIndent: 5,thickness: 0.5,color: dark?AppColors.darkGrey:AppColors.grey,)),
        Text(
          title,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Expanded(child: Divider(indent: 5, endIndent: 60,thickness: 0.5,color: dark?AppColors.darkGrey:AppColors.grey,)),
      ],
    );
  }
}
