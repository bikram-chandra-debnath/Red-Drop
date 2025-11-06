import 'package:flutter/material.dart';
import 'package:red_drop_2/utilities/constants/colors.dart';
import 'package:red_drop_2/utilities/constants/text.dart';
import 'package:red_drop_2/utilities/helpers/helper_functions.dart';

class PrivacyPolicyCheckBox extends StatelessWidget {
  const PrivacyPolicyCheckBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final dark = AppHelperFunctions.isDarkMode(context);
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Checkbox(value: true, onChanged: (value) {}),
          RichText(
            text: TextSpan(
              style: Theme.of(context).textTheme.bodyMedium,
              children: [
                TextSpan(text: "${AppTexts.agree} "),
                TextSpan(
                  text: AppTexts.privacy,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium!.copyWith(
                    color: dark? AppColors.light: AppColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor:  dark? AppColors.light: AppColors.primary,
                  ),
                ),
                TextSpan(text: " ${AppTexts.and} "),
                TextSpan(
                  text: AppTexts.terms,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium!.copyWith(
                    color:  dark? AppColors.light: AppColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor:  dark? AppColors.light: AppColors.primary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
