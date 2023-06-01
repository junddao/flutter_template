// ignore_for_file: unused_element

import 'package:flutter/services.dart';
import 'package:smatii/index.dart';
import 'package:smatii/themes/font_family.dart';

ThemeData lightThemeData() {
  return ThemeData(
    brightness: Brightness.light,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    hoverColor: Colors.transparent,
    fontFamily: TSFontFamily.koreanFontFamily,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, // statusBar 색상(android)
        statusBarIconBrightness: Brightness.dark, // 아이콘 밝기(android)
        statusBarBrightness: Brightness.light, //status 밝기에 대비되는 아이콘 밝기(ios)
      ),
      centerTitle: true,
      iconTheme: IconThemeData(
        size: 24,
        color: Colors.black,
      ),
      backgroundColor: Colors.transparent, //appbar 색상
      titleTextStyle: TextStyle(
        fontSize: 24,
        fontWeight: TSFontWeight.semiBold,
        color: Colors.black,
      ),
      elevation: 0,
    ),
    iconTheme: const IconThemeData(
      color: TSColors.flyGrey700
    ),
    dividerTheme: const DividerThemeData(
      color: TSColors.flyGrey700
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
      ),
      contentPadding: EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical: 20,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: TSColors.flyBlue700,
        minimumSize: const Size(double.infinity, 60),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
        textStyle: TSTextStyle.size20.medium,
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        minimumSize: const Size(double.infinity, 60),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
        textStyle: TSTextStyle.size20.medium,
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: TSTextStyle.size20.medium,
      ),
    ),
    iconButtonTheme: IconButtonThemeData(style: IconButton.styleFrom()),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedLabelStyle: TSTextStyle.size11.medium,
      unselectedLabelStyle: TSTextStyle.size11.medium,
    ),
    textTheme: TextTheme(
        titleLarge: TSTextStyle.size24.semiBold, // AppBar Title 스타일
        titleMedium: TSTextStyle.size14.semiBold, //TextField 스타일
        bodyMedium: TSTextStyle.size16 // Text위젯 기본값
        ),
  );
}

ThemeData darkThemeData() {
  return ThemeData.dark();
}
