import 'package:flutter/material.dart';
import 'package:red_drop_2/utilities/constants/colors.dart';
import 'package:red_drop_2/utilities/constants/size.dart';
import 'package:red_drop_2/utilities/helpers/device_helper.dart';

class CustomAppBar extends StatelessWidget implements PreferredSize {
  const CustomAppBar({
    super.key,
    required this.title,
    this.centerTitle = false,
    this.actions,
    this.leading,
  });

  final String title;
  final bool centerTitle;
  final List<Widget>? actions;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: Theme.of(
          context,
        ).textTheme.headlineMedium!.apply(color: AppColors.white),
      ),
      centerTitle: centerTitle,

      backgroundColor: AppColors.primary,
      actions: actions,
      leading: Padding(
        padding: EdgeInsets.only(left: AppSizes.defaultSpace),
        child: leading,
      ),
    );
  }

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(DeviceHelper.getAppBarHeight());
}


