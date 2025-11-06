import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:red_drop_2/common/widgets/card/card.dart';




class ServiceBox extends StatelessWidget {
   const ServiceBox({
    super.key, required this.images, required this.serviceName, 
    
  });

  // final int index;
  // final controller = Get.put(ServiceController());
  final String images, serviceName;
  


  @override
  Widget build(BuildContext context) {
    return CardBox(child:Column(
        children: [
          SizedBox(
            height: 85,
            width: double.infinity,
            child: Lottie.asset(images),
          ),
          Spacer(),
          
          Text(
            serviceName,
            style: Theme.of(context).textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
          Spacer(),
          
        ],
      ), );
  }
}



 

