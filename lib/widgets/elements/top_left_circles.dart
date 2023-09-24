import 'package:flutter/material.dart';

Widget buildTopLeftCircles() {
  return Container(
    width: 180,
    height: 180,
    child: Stack(
      alignment: Alignment.topLeft,
      children: [
        Positioned(
          top: -64,
          left: 21,
          child: Container(
            width: 165,
            height: 160,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFFD0FC04).withOpacity(0.8),
            ),
            child: Center(),
          ),
        ),
        Positioned(
          top: -15,
          left: -68,
          child: Container(
            width: 165,
            height: 160,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black.withOpacity(0.6),
            ),
            child: Center(),
          ),
        ),
      ],
    ),
  );
}
