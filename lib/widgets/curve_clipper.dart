import 'package:flutter/material.dart';

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, (size.height / 5) * 4);
    Offset curvePoint1 = Offset(size.width / 4, size.height);
    Offset centerPoint = Offset(size.width / 2, (size.height / 5) * 4);
    path.quadraticBezierTo(
        curvePoint1.dx, curvePoint1.dy, centerPoint.dx, centerPoint.dy);

    Offset curvePoint2 = Offset((size.width / 4) * 3, (size.height / 5) * 3);
    Offset endPoint = Offset(size.width, (size.height / 5) * 4);
    path.quadraticBezierTo(
        curvePoint2.dx, curvePoint2.dy, endPoint.dx, endPoint.dy);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class DrawerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(size.width * 0.66, 0);
    Offset centerPoint = Offset(size.width, size.height / 2);
    Offset endPoint = Offset(size.width * 0.66, size.height);
    path.quadraticBezierTo(
        centerPoint.dx, centerPoint.dy, endPoint.dx, endPoint.dy);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
