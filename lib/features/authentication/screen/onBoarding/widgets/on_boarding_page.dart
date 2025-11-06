import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:red_drop_2/utilities/helpers/device_helper.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key, required this.animation, required this.title, required this.subtitle,
  });

  final String animation;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: DeviceHelper.getAppBarHeight()),
      child: Column(
       
      
        children: [
        Lottie.asset(animation),
        Text(title,style: Theme.of(context).textTheme.headlineMedium,),
        Text(subtitle,textAlign: TextAlign.center,)
      
      ]),
    );
  }
}