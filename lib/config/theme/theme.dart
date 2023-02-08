import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData theme = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: Colors.white,
  primaryColor: const Color(0xFF3079EC),
  visualDensity: VisualDensity.adaptivePlatformDensity,
  textTheme: TextTheme(
    displayLarge: GoogleFonts.mulish(
      fontSize: 20.sp,
      fontWeight: FontWeight.w600,
      color: const Color(0xFF031025),
      fontStyle: FontStyle.normal,
    ),
    displayMedium: GoogleFonts.mulish(
      fontSize: 16.sp,
      fontWeight: FontWeight.w700,
      color: const Color(0xFF031025),
      fontStyle: FontStyle.normal,
    ),
    bodyLarge: GoogleFonts.mulish(
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      color: const Color(0xFF888D95),
    ),
    bodyMedium: GoogleFonts.mulish(
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
      color: const Color(0xFF888D95),
    ),
    titleLarge: GoogleFonts.mulish(
      fontSize: 14.sp,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    titleMedium: GoogleFonts.mulish(
      fontSize: 12.sp,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
  ),
  canvasColor: Colors.white,
  fontFamily: GoogleFonts.mulish.toString(),
  iconTheme: IconThemeData(
    color: Colors.black,
    size: 24.sp,
  ),
  primaryIconTheme: IconThemeData(
    color: Colors.black,
    size: 24.sp,
  ),
  cardTheme: CardTheme(
    margin: EdgeInsets.only(bottom: 16.sp),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.r)),
    elevation: 0,
    color: const Color.fromRGBO(242, 242, 247, 1),
  ),
  appBarTheme: const AppBarTheme(
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.black),
    backgroundColor: Colors.transparent,
  ),
);
