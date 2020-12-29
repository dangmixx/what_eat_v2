import 'package:flutter/material.dart';

import 'constants.dart';

ThemeData them() {
  return ThemeData(
    primarySwatch: Colors.blue,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "Muli",
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    inputDecorationTheme: inputDecorationTheme(),
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    color: Colors.white,
    elevation: 0,
    brightness: Brightness.light,
    iconTheme: IconThemeData(color: Colors.black),
    textTheme: TextTheme(headline6: TextStyle(color: Colors.black)),
  );
}

TextTheme textTheme() {
  return TextTheme(
      bodyText1: TextStyle(color: kTextColor),
      bodyText2: TextStyle(color: kTextColor));
}

InputDecorationTheme inputDecorationTheme() {
  return InputDecorationTheme(
    labelStyle: TextStyle(color: kPrimaryColor),
    // floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(color: kTextColor),
        gapPadding: 0.0),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(color: kTextColor),
        gapPadding: 0.0),
    errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(color: kPrimaryColor),
        gapPadding: 0.0),
    focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(color: kPrimaryColor),
        gapPadding: 0.0),
  );
}
