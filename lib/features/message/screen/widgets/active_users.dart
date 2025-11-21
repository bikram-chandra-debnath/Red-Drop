import 'package:flutter/material.dart';
import 'package:red_drop_2/utilities/constants/colors.dart';
import 'package:red_drop_2/utilities/constants/size.dart';

class ActiveUsers extends StatelessWidget {
  const ActiveUsers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder:
            (context, index) =>
                Padding(
                  
                  padding: const EdgeInsets.only(left: AppSizes.defaultSpace/2),
                  child: CircleAvatar(
                    radius: 30.0,
                    backgroundColor: AppColors.info),
                ),
      ),
    );
  }
}
