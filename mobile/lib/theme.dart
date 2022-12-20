import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/constants/colors.dart';

// Theme provider

final themeProvider = StateProvider<ThemeData>(((ref) => lightTheme));

ThemeData lightTheme = ThemeData(
    appBarTheme: const AppBarTheme(
        color: kWhite,
        elevation: 0,
        centerTitle: true,
        shadowColor: kWhite,
        actionsIconTheme: IconThemeData(color: kBlack)),
    fontFamily: GoogleFonts.workSans().fontFamily,
    primarySwatch: mySwatch);

ThemeData darkTheme = ThemeData(
  primarySwatch: darkSwatch,
);

var myHeader1Style = const TextStyle(fontSize: 23, fontWeight: FontWeight.w900);
var textButtonStyle1 = const TextStyle(color: kBlack, fontSize: 17);
var darkElevatedButtonStyle = ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    backgroundColor: kBlack,
    foregroundColor: kWhite);
