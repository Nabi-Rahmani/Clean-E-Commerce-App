import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static const textWhite = Color(0xFFFFFFFF);
  static const bgBlack = Color(0xFF161616);
  static const textBlack = Color(0xFF232323);
  static const black87 = Color(0xDE000000);
  static const black54 = Colors.black54;
  static const bgWhite = Color(0xFFC0C0C0);
  //grey section
  static const bgGrey = Colors.grey;

  // red colors section
  static const bgRedMainColor = Color.fromARGB(255, 0, 55, 59);
  //dark black
  static const mainDark = Color.fromARGB(255, 225, 221, 208);
}

TextStyle dynamicTextStyle({
  double fontSize = 14.0,
  Color color = Colors.black,
  FontWeight fontWeight = FontWeight.normal,
}) {
  return GoogleFonts.roboto(
    textStyle: TextStyle(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
    ),
  );
}
