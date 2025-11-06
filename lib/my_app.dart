

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:red_drop_2/features/authentication/screen/onBoarding/onboarding.dart';
import 'package:red_drop_2/utilities/theme/theme.dart';


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.lightMode,
      darkTheme: AppTheme.darkMode,
      themeMode: ThemeMode.system,

      home: OnboardingScreen(),
    );
  }
}


