import 'package:flutter/material.dart';

Widget slideUpTransition(context, animation, secondaryAnimation, child) {
  const begin = Offset(0, 1);
  const end = Offset.zero;
  const curve = Curves.ease;
  var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
  var offsetAnimation = animation.drive(tween);
  return SlideTransition(
    position: offsetAnimation,
    child: child,
  );
}
