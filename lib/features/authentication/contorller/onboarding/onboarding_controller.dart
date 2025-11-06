import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:red_drop_2/features/authentication/screen/login/login.dart';

class OnboardingController extends GetxController{


  static OnboardingController get instance => Get.find();

  // variables

  final pageController = PageController();

  RxInt currentIndex = 0.obs;

  // update current index when page scroll

  void updatePageIndicator(index){

    currentIndex.value = index;
  }

  // jump to specific dot selected page

  void dotNevigationClick(index){
    currentIndex.value = index;
    pageController.jumpToPage(index);
  }

  // jump to next page

  void nextPage(){

    if (currentIndex.value ==2){
      Get.offAll(()=>LoginScreen());
      
    }
    else{
      
    currentIndex.value++;
    
    pageController.jumpToPage(currentIndex.value);
      
    }
  }
  // jump to last page

  void skipPage(){

    currentIndex.value=2;

    pageController.jumpToPage(currentIndex.value);



  }



}