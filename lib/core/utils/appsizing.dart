// import 'package:flutter/material.dart';

// class ScreenService {
//   static final ScreenService _instance = ScreenService._internal();
//   factory ScreenService() => _instance;
//   ScreenService._internal();

//   double _screenWidth = 0.0;
//   double _screenHeight = 0.0;

//   void updateScreenSize(double width, double height) {
//     _screenWidth = width;
//     _screenHeight = height;
//   }

//   double get screenWidth => _screenWidth;
//   double get screenHeight => _screenHeight;

//   bool get isMobile => _screenWidth < 480;
//   bool get isTablet => _screenWidth > 480 && _screenWidth < 895;
//   bool get isDesktop => _screenWidth > 895;
// }

// class AppSizing {
//   static double width() => ScreenService().screenWidth;
//   static double height() => ScreenService().screenHeight;

//   static bool isMobile() => ScreenService().isMobile;
//   static bool isTablet() => ScreenService().isTablet;
//   static bool isDesktop() => ScreenService().isDesktop;

//   static SizedBox k20() =>
//       SizedBox(height: ScreenService().screenHeight * 0.02);
//   static SizedBox k10() =>
//       SizedBox(height: ScreenService().screenHeight * 0.01);

//   static SizedBox kwSpacer(double factor) =>
//       SizedBox(width: ScreenService().screenWidth * factor);
// }
import 'package:flutter/material.dart';

class AppSizing {
  /// Returns the width of the screen. Useful for making responsive layouts.
  static double width(BuildContext context) =>
      MediaQuery.of(context).size.width;

  /// Returns the height of the screen. Helps adjust UI based on the height.
  static double height(BuildContext context) =>
      MediaQuery.of(context).size.height;

  /// Checks if the device screen width is less than 480 (mobile screen size).
  static bool isMobile(BuildContext context) => width(context) < 480;

  /// Checks if the device screen width is between 480 and 895 (tablet size).
  static bool isTablet(BuildContext context) =>
      width(context) > 480 && width(context) < 895;

  /// Checks if the device screen width is greater than 895 (desktop size).
  static bool isDesktop(BuildContext context) => width(context) > 895;

  /// Returns a SizedBox with height set to 2% of the screen height. Useful for vertical spacing.
  static SizedBox k20(BuildContext context) =>
      SizedBox(height: height(context) * 0.02);

  /// Returns a SizedBox with height set to 1% of the screen height. Useful for smaller vertical spacing.
  static SizedBox k10(BuildContext context) =>
      SizedBox(height: height(context) * 0.01);

  /// Returns a SizedBox with width relative to a factor of the screen width. Helpful for horizontal spacing.
  static SizedBox kwSpacer(BuildContext context, double factor) =>
      SizedBox(width: width(context) * factor);
}
