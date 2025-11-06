
import 'package:get/get.dart';
import 'package:red_drop_2/utilities/constants/image.dart';

import '../../../utilities/constants/text.dart';

class ServiceController extends GetxController {

   List<String> servicesImages = [
    AppImages.ambulance,
    AppImages.campin,
    AppImages.requestBlood,
    AppImages.donateNow,
  ];

  List<String> serviceTitles = [
    AppTexts.ambulance,
    AppTexts.bloodCamp,
    AppTexts.requestBlood,
    AppTexts.donateNow,
    
  ];
}