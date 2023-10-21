import 'package:flutter/material.dart';
import 'theme.dart';

// If you change the order, the order in which it is displayed also changes
enum CocodayoThemeMode {
  normal(0, 'ノーマルモード', '通常時の設定です', Icon(Icons.settings)),
  emergency(1, '緊急モード', '緊急時の設定です', Icon(Icons.sunny));

  const CocodayoThemeMode(
      this.id, this.displayName, this.description, this.icon);

  final int id;
  final String displayName;
  final String description;
  final Icon icon;
}

extension Extension on CocodayoThemeMode {
  /// Theme by CocodayoThemeMode
  ThemeData get themeData {
    return switch (this) {
      CocodayoThemeMode.normal => normalTheme(),
      CocodayoThemeMode.emergency => emergencyTheme(),
    };
  }
}
