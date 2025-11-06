import 'package:flutter/material.dart';
import 'package:red_drop_2/utilities/constants/size.dart';

class BodyTitle extends StatelessWidget {
  const BodyTitle({
    super.key, required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,style: Theme.of(context).textTheme.headlineSmall,),
          //TextButton(onPressed: (){}, child: Text(AppTexts.seeAll,style: Theme.of(context).textTheme.bodyMedium,))
        ],
      ),
    );
  }
}