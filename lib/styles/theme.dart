import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color.dart';

class MyThemeData {
  static ThemeData light = ThemeData(
    primaryColor: WhiteColor,
    scaffoldBackgroundColor: WhiteColor,
    appBarTheme: AppBarTheme(
        backgroundColor: primaryColor,
        centerTitle: true,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30)))),
    textTheme: TextTheme(
        bodyLarge: GoogleFonts.poppins(
            fontSize: 22, color: blackColor, fontWeight: FontWeight.bold),
        //#################################################
        bodyMedium: GoogleFonts.poppins(
            fontSize: 20, color: blackColor, fontWeight: FontWeight.w700),
        //#################################################
        bodySmall: GoogleFonts.poppins(
            fontSize: 18, color: blackColor, fontWeight: FontWeight.w100)),
  );

/*
      bottomNavigationBarTheme: BottomNavigationBarThemeData(

          type: BottomNavigationBarType.fixed,
          backgroundColor: WhiteColor,
          selectedItemColor: primaryColor,
          unselectedItemColor: GreeyColor));
*/

/*
  static ThemeData dark = ThemeData(
      primaryColor: BackgroundDark,
      scaffoldBackgroundColor: BackgroundLight,
      appBarTheme: AppBarTheme(backgroundColor:BackgroundDark,),
      textTheme: TextTheme(
          bodyLarge: GoogleFonts.poppins(
              fontSize: 22, color: WhiteColor, fontWeight: FontWeight.bold),
          //#################################################
          bodyMedium: GoogleFonts.poppins(
              fontSize: 20, color: WhiteColor, fontWeight: FontWeight.w400),
          //#################################################
          bodySmall: GoogleFonts.poppins(
              fontSize: 18,
              color: blackColor,
              fontWeight: FontWeight.w100)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(

          type: BottomNavigationBarType.fixed,
          backgroundColor: WhiteColor,
          selectedItemColor: primaryColor,
          unselectedItemColor: GreeyColor));
*/
}
