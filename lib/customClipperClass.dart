import 'package:flutter/material.dart';

class Cliper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    dynamic width = size.width; //200
    dynamic height = size.height; //200
    var firstStart = Offset(width / 10, height); //first curve
    var firstEnd = Offset(width / 4.0, height - 10.0);
    var secondStart = Offset(width - (width / 4), height - 60); //second curve
    var secondEnd = Offset(width, height - 7); //end point of second curve

    Path path = Path();
    path.lineTo(0, height - 10);
    path.quadraticBezierTo(firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);
    path.quadraticBezierTo(secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
    path.lineTo(width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
