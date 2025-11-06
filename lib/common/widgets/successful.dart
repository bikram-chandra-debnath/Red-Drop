import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:red_drop_2/common/style/padding.dart';
import 'package:red_drop_2/common/widgets/buttons/elevated_button.dart';
import 'package:red_drop_2/utilities/constants/size.dart';
import 'package:red_drop_2/utilities/constants/text.dart';

class Successful extends StatelessWidget {
  const Successful({super.key, required this.image, required this.title, required this.subtitle, required this.onPressed});

  final String image,title,subtitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: AppPadding.screenPadding,
        child: Column(children: [
          // image

          Lottie.asset(image),
          SizedBox(height: AppSizes.spaceBtwSections,),

          // title

          Text(title, style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
          SizedBox(height: AppSizes.spaceBtwItems,),

          // subtitle

          Text(subtitle, style: Theme.of(context).textTheme.bodySmall,textAlign: TextAlign.center,),
          SizedBox(height: AppSizes.spaceBtwSections,),

          // continue

          AppElevatedButton(onPressed: onPressed, child: Text(AppTexts.appContinue))

        ]),
      ),
    );
  }
}
