import 'package:flutter/material.dart';
import 'dart:math';

class SimpleClipper extends CustomClipper<Path> {
  /// A clipper classed used to add zigzag edges to a widget
  @override
  Path getClip(Size size) {
    var rng = Random();
    Path path = Path();
    path.lineTo(0, size.height);
    var curXPos = 0.0;
    var curYPos = size.height;
    var increment = size.width / 65;
    while (curXPos < size.width) {
      curXPos += increment +  rng.nextInt(55);
      curYPos = curYPos == size.height ? size.height - 30 : size.height;
      path.lineTo(curXPos, curYPos);
    }
    // print(size.width);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
