import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:red_drop_2/common/style/padding.dart';
import 'package:red_drop_2/common/widgets/title/bodytitle.dart';
import 'package:red_drop_2/features/home/controller/service_controller.dart';
import 'package:red_drop_2/features/home/screen/widgets/service_box.dart';
import 'package:red_drop_2/utilities/constants/text.dart';

// ignore: must_be_immutable
class MoreServices extends StatelessWidget {
  MoreServices({super.key});

  final controller = Get.put(ServiceController());

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        // Service title
        BodyTitle(title: AppTexts.moreServices),

        // services
        Padding(
          padding: AppPadding.screenPadding,
          child: SizedBox(
            child: GridView.builder(
              padding: EdgeInsets.all(0),
              itemCount: 4,
              physics: AlwaysScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.4,
              ),
              shrinkWrap: true,
              itemBuilder:
                  (BuildContext context, int index) => ServiceBox(
                    images: controller.servicesImages[index],
                    serviceName: controller.serviceTitles[index],
                  ),
            ),
          ),
        ),
      ],
    );
  }
}
