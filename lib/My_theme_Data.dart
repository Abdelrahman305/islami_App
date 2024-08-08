import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color primaryColor = Color(0xffB7935f);
Color primaryDarkColor = Color(0xff141A2E);
Color blackColor = Color(0xff242424);
Color yellowColor = Color(0xffFACC1D);

class MyThemeData {
  static ThemeData lightTheme = ThemeData(
      primaryColor: primaryColor,
      dividerColor: primaryColor,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        backgroundColor: primaryColor,
        selectedItemColor: blackColor,
        unselectedItemColor: Colors.white,
      ),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(
          size: 30,
          color: blackColor,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        //titleTextStyle:
      ),
      colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: primaryColor,
          onPrimary: primaryColor,
          secondary: primaryColor,
          onSecondary: primaryColor,
          error: primaryColor,
          onError: primaryColor,
          surface: primaryColor,
          onSurface: primaryColor),
      textTheme: TextTheme(
        bodyLarge: GoogleFonts.elMessiri(
          fontSize: 30,
          color: Colors.black,
          fontWeight: FontWeight.w700,
        ),
        bodyMedium: GoogleFonts.elMessiri(
          fontSize: 25,
          color: Colors.black,
          fontWeight: FontWeight.w700,
        ),
        bodySmall: GoogleFonts.elMessiri(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.w700,
        ),
      ));

  static ThemeData darkTheme = ThemeData(
      primaryColor: primaryDarkColor,
      dividerColor: yellowColor,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        backgroundColor: primaryDarkColor,
        selectedItemColor: yellowColor,
        unselectedItemColor: Colors.white,
      ),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(
          size: 30,
          color: Colors.white,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        //titleTextStyle:
      ),
      colorScheme: ColorScheme(
          brightness: Brightness.dark,
          primary: primaryDarkColor,
          onPrimary: primaryDarkColor,
          secondary: primaryDarkColor,
          onSecondary: primaryDarkColor,
          error: primaryDarkColor,
          onError: primaryDarkColor,
          surface: primaryDarkColor,
          onSurface: primaryDarkColor),
      textTheme: TextTheme(
        bodyLarge: GoogleFonts.elMessiri(
          fontSize: 30,
          color: Colors.white,
          fontWeight: FontWeight.w700,
        ),
        bodyMedium: GoogleFonts.elMessiri(
          fontSize: 25,
          color: Colors.white,
          fontWeight: FontWeight.w700,
        ),
        bodySmall: GoogleFonts.elMessiri(
          fontSize: 20,
          color: yellowColor,
          fontWeight: FontWeight.w700,
        ),
      ));
}
