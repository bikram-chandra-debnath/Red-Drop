import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:red_drop_2/utilities/constants/colors.dart';

class NotificationButton extends StatelessWidget {
  const NotificationButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(Iconsax.notification, color: AppColors.white),
        ),
        Positioned(
          right: 5,
          child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              color: AppColors.warning.withValues(alpha: 0.5),
              borderRadius: BorderRadius.all(Radius.circular(1000))
            ),
            
            child: Center(
            child: Text("2",style:Theme.of(context).textTheme.bodySmall!.apply(color: AppColors.white),),
          ),),
        )
      ],
    );
  }
}
