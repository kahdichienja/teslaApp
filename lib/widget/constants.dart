import 'package:flutter/material.dart';

class Constants {
  static const backgroundColor = Color(0xFF2c3135);
  static final highlightColor = Colors.white.withOpacity(0.05);
  static const shadowColor = Colors.black87;

  static final softHighlightColor = Constants.highlightColor.withOpacity(0.03);
  static final softShadowColor = Constants.shadowColor.withOpacity(0.3);

  static const gradientStart = Color.fromARGB(255, 149, 221, 241);
  static const gradientMiddle = Color.fromARGB(255, 4, 114, 147);
  static const gradientEnd = Color.fromARGB(255, 43, 61, 83);
}