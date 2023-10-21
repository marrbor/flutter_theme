import 'package:flutter/material.dart';

/// 通常モードのテーマ
ThemeData normalTheme() => _themeData(
    essence:
        _ThemeEssence(primaryColor: Colors.teal, secondaryColor: Colors.green));

/// 災害モードのテーマ
ThemeData emergencyTheme() => _themeData(
    essence: _ThemeEssence(
        primaryColor: Colors.red, secondaryColor: Colors.deepOrangeAccent));

/// テーマ差分(エッセンス)設定クラス
class _ThemeEssence {
  _ThemeEssence({required this.primaryColor, required this.secondaryColor});

  final Color primaryColor;
  final Color secondaryColor;
}

/// 指定されたエッセンスを反映したテーマデータを返す
ThemeData _themeData({required _ThemeEssence essence}) => ThemeData().copyWith(
      useMaterial3: true,
      colorScheme: const ColorScheme.light().copyWith(
        primary: essence.primaryColor,
        secondary: essence.secondaryColor,
      ),
      brightness: Brightness.light,
      appBarTheme: AppBarTheme(
          color: essence.primaryColor,
          foregroundColor: Colors.white,
          centerTitle: true,
          titleTextStyle: const TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
      buttonTheme: ButtonThemeData(
        buttonColor: essence.secondaryColor,
      ),
      cardTheme: CardTheme(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      ),
      listTileTheme: ListTileThemeData(
        titleTextStyle: const TextStyle(fontSize: 20, color: Colors.grey),
        subtitleTextStyle: const TextStyle(fontSize: 14, color: Colors.grey),
        iconColor: essence.primaryColor,
      ),
      iconTheme: IconThemeData(
        color: essence.primaryColor,
      ),
      scaffoldBackgroundColor: const Color.fromARGB(0xFF, 0xDB, 0xDB, 0xDB),
    );
