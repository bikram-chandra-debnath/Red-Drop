import 'package:flutter/material.dart';
import 'package:red_drop_2/utilities/helpers/device_helper.dart';

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton({
    super.key, required this.onPressed, required this.child,
  });
  final VoidCallback onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:  DeviceHelper.getScreenWidth(context),
      child: ElevatedButton( onPressed: onPressed, child: child,));
  }
}