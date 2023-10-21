// 緊急時テーマ
import 'package:flutter/material.dart';

const _primaryColor = Colors.red;
const _secondaryColor = Colors.deepOrangeAccent;
ThemeData emergencyTheme = ThemeData.from(
  colorScheme: const ColorScheme.light().copyWith(
    primary: _primaryColor,
    secondary: _secondaryColor,
  ),
).copyWith(
  brightness: Brightness.dark,
  primaryColor: _secondaryColor,
  hintColor: _primaryColor,
  appBarTheme: const AppBarTheme(color: _primaryColor,centerTitle: true),
  buttonTheme: const ButtonThemeData(
    buttonColor: _secondaryColor,
  ),
  iconTheme: const IconThemeData(
    color: _primaryColor,
  ),
  scaffoldBackgroundColor: const Color.fromARGB(0xFF, 0xAB, 0xAB, 0xAB),
);
