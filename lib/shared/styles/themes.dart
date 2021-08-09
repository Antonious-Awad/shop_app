import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shop_app/shared/styles/colors.dart';

ThemeData lightTheme = ThemeData(
  primarySwatch: defaultColor,
  floatingActionButtonTheme:
      FloatingActionButtonThemeData(
        // backgroundColor: defaultColor,
        foregroundColor: Colors.white
        ),
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      backwardsCompatibility: false,
      systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark),
      color: Colors.white,
      elevation: 0,
      titleTextStyle: TextStyle(
          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
      centerTitle: true),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    selectedItemColor: defaultColor,
    elevation: 30,
  ),
  textTheme: TextTheme(
    bodyText1: TextStyle(
        fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.black),
  ),
  fontFamily: "Jannah",
);

ThemeData darkTheme = ThemeData(
  fontFamily: "Jannah",
  textTheme: TextTheme(
      bodyText1: TextStyle(
          fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.white)),
  scaffoldBackgroundColor: HexColor('333739'),
  primarySwatch: defaultColor,
  floatingActionButtonTheme:
      FloatingActionButtonThemeData(/*backgroundColor: Colors.deepOrange*/),
  appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      backwardsCompatibility: false,
      systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: HexColor('333739'),
          statusBarIconBrightness: Brightness.light),
      color: HexColor('333739'),
      elevation: 0,
      titleTextStyle: TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
      centerTitle: true),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: HexColor('333739'),
      type: BottomNavigationBarType.fixed,
      selectedItemColor: defaultColor,
      elevation: 30,
      unselectedItemColor: Colors.grey),
);
