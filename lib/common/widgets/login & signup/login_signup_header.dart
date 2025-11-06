import 'package:flutter/material.dart';
import 'package:red_drop_2/utilities/constants/size.dart';

class AppLoginSignUpHeader extends StatelessWidget {
  const AppLoginSignUpHeader({
    super.key, required this.title, required this.subtitle,
  });

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ____Title_____
        Text(
          title,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        SizedBox(height: AppSizes.sm),
        // _____Subtitle____
        Text(
          subtitle,
          
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
