import 'package:flutter/material.dart';
import 'package:red_drop_2/common/widgets/appbar/carve_appbart.dart';
import 'package:red_drop_2/features/message/screen/widgets/message_card.dart';
import 'package:red_drop_2/utilities/constants/size.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyAppBar(title: "Messages", isBack: false),
        
            SizedBox(
              child: GridView.builder(
                
                padding: EdgeInsets.all(0),
                itemCount: 20,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: 6,
                ),
                shrinkWrap: true,
                itemBuilder:
                    (BuildContext context, int index) => Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: AppSizes.defaultSpace / 2,
                      ),
                      child: MessageCard(),
                    ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}

