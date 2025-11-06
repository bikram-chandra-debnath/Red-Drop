import 'package:flutter/material.dart';

class MyCustomShape extends CustomClipper<Path> {


  @override
  Path getClip(Size size) {

    Path path = Path();


    var height = size.height;
    var width = size.width;

    path.lineTo(0, height);
    path.quadraticBezierTo(5, height-30, 30, height-30);
    path.lineTo(width-30, height-30);

    path.quadraticBezierTo(width-5, height-30, width, height);
   
    path.lineTo(width, 0);



    return path;
  }
  
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}