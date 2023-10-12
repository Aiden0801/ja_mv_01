import 'package:flutter/material.dart';

class ThemeCosntants {
  static const Color button1Color = Color(0xFFFFFFFF);
}

class AppBarBackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect = Rect.fromLTRB(0, 0, size.width, size.height);
    final Gradient gradient = LinearGradient(
      begin: Alignment.bottomRight,
      end: Alignment.topLeft,
      colors: [
        Color(0xFF808080), // #808080
        Color(0xFFA6A6A6), // #A6A6A6
        Color(0xFFBFBFBF), // #BFBFBF
      ],
    );

    final Paint paint = Paint()..shader = gradient.createShader(rect);

    canvas.drawRect(rect, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
