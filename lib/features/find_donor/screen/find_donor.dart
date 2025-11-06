import 'package:flutter/material.dart';
import 'package:red_drop_2/common/widgets/appbar/carve_appbart.dart';

class FindDonor extends StatelessWidget {
  const FindDonor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
           MyAppBar(title: "Find Donor",isBack: false,)
        ],
      ),
    );
  }
}


