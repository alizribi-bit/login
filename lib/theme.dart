import 'package:flutter/material.dart';

final ThemeData babyTheme = ThemeData(
  primaryColor: Colors.pink.shade300,
  scaffoldBackgroundColor: Colors.pink.shade50,
  buttonTheme: ButtonThemeData(
    buttonColor: Colors.pink.shade300,
    textTheme: ButtonTextTheme.primary,
  ),
  textTheme: TextTheme(
    displayLarge: TextStyle(
        fontSize: 32.0,
        fontWeight: FontWeight.bold,
        color: Colors.pink.shade300),
    displayMedium: TextStyle(
        fontSize: 28.0,
        fontWeight: FontWeight.bold,
        color: Colors.pink.shade600),
    displaySmall: TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
        color: Colors.pink.shade500),
    bodyLarge: TextStyle(fontSize: 16.0, color: Colors.grey.shade800),
    bodyMedium: TextStyle(fontSize: 14.0, color: Colors.grey.shade600),
    labelLarge: const TextStyle(fontSize: 18.0, color: Colors.white),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: Colors.pink.shade300, // Button text color
      textStyle: const TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
    ),
  ),
  appBarTheme: AppBarTheme(
    color: Colors.pink.shade300,
    iconTheme: const IconThemeData(color: Colors.white),
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.pink.shade300),
      borderRadius: BorderRadius.circular(10.0),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.pink.shade500),
      borderRadius: BorderRadius.circular(10.0),
    ),
    labelStyle: TextStyle(color: Colors.pink.shade300),
  ),
  iconTheme: IconThemeData(
    color: Colors.pink.shade300,
  ),
  colorScheme: ColorScheme.light(
    primary: Colors.pink.shade300,
    onPrimary: Colors.white,
    secondary: Colors.blue.shade100,
    onSecondary: Colors.pink.shade200,
    background: Colors.pink.shade50,
    surface: Colors.white,
    onSurface: Colors.grey.shade800,
    onBackground: Colors.grey.shade700,
    error: Colors.red.shade300,
    onError: Colors.white,
  )
      .copyWith(secondary: Colors.blue.shade100)
      .copyWith(background: Colors.pink.shade50),
);
