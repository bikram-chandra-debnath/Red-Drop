import 'package:flutter/material.dart';
import 'package:red_drop_2/common/widgets/card/card.dart';
import 'package:red_drop_2/utilities/constants/image.dart';

class MessageCard extends StatelessWidget {
  const MessageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
      },
      child: CardBox(
        height: 50,

        child: Stack(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage(AppImages.googleIcon),
            ),

            Positioned(
              top: 5,
              left: 65,

              child: Text(
                "User Name",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            Positioned(
              top: 25,
              left: 65,

              child: Text(
                "Message request for blood donation",
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
            Positioned(
              top: 25,
              right: 10,

              child: Text(
                "10:00",
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
