import 'package:flutter/material.dart';
import 'package:red_drop_2/common/widgets/title/bodytitle.dart';
import 'package:red_drop_2/utilities/constants/image.dart';
import 'package:red_drop_2/utilities/constants/size.dart';
import 'package:red_drop_2/utilities/constants/text.dart';

class TopContributors extends StatelessWidget {
  const TopContributors({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
    
     
    BodyTitle(title: AppTexts.topContributor,),
    SizedBox(height: AppSizes.spaceBtwItems/2,),
    
        SizedBox(
          height: 80,
          child: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            
            itemBuilder: ( context,index)=>
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSizes.spaceBtwItems/2),
              child: CircleAvatar(
                backgroundImage: AssetImage(AppImages.facebookIcon),
                radius: 30,
              ),
            ),
            
          ),
        ),
         ],
    );
  }
}
