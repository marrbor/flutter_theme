// 通常時テーマ
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const _primaryColor = Colors.teal;
const _secondaryColor = Colors.green;
ThemeData normalTheme = ThemeData.from(
  colorScheme: const ColorScheme.dark().copyWith(
    primary: _primaryColor,
    secondary: _secondaryColor,
  ),
).copyWith(
  brightness: Brightness.dark,
  primaryColor: _secondaryColor,
  hintColor: _primaryColor,
  buttonTheme: const ButtonThemeData(
    buttonColor: _secondaryColor,
  ),
  iconTheme: const IconThemeData(
    color: _primaryColor,
  ),
  cupertinoOverrideTheme: const CupertinoThemeData(
    textTheme: CupertinoTextThemeData(),
  ),
);

