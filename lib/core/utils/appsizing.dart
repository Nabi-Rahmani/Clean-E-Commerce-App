import 'package:flutter/material.dart';

class ScreenService {
  static final ScreenService _instance = ScreenService._internal();
  factory ScreenService() => _instance;
  ScreenService._internal();

  double _screenWidth = 0.0;
  double _screenHeight = 0.0;

  void updateScreenSize(double width, double height) {
    _screenWidth = width;
    _screenHeight = height;
  }

  double get screenWidth => _screenWidth;
  double get screenHeight => _screenHeight;

  bool get isMobile => _screenWidth < 480;
  bool get isTablet => _screenWidth > 480 && _screenWidth < 895;
  bool get isDesktop => _screenWidth > 895;
}

class AppSizing {
  static double width() => ScreenService().screenWidth;
  static double height() => ScreenService().screenHeight;

  static bool isMobile() => ScreenService().isMobile;
  static bool isTablet() => ScreenService().isTablet;
  static bool isDesktop() => ScreenService().isDesktop;

  static SizedBox k20() =>
      SizedBox(height: ScreenService().screenHeight * 0.02);
  static SizedBox k10() =>
      SizedBox(height: ScreenService().screenHeight * 0.01);

  static SizedBox kwSpacer(double factor) =>
      SizedBox(width: ScreenService().screenWidth * factor);
}
