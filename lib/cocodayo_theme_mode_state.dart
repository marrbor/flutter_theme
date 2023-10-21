import 'package:flutter/material.dart';
import 'package:flutter_theme/cocodayo_theme_mode.dart';

/// StateNotifier のステート（状態）はイミュータブル（不変）である必要があります。
@immutable
class CocodayoThemeModeState {
  const CocodayoThemeModeState({required this.themeMode});

  final CocodayoThemeMode themeMode;

  // このクラスはイミュータブルであり、内容を直接変更できないためコピーを作る必要があります。
  // これはオブジェクトの各プロパティの内容をコピーして新たな CocodayoThemeModeState を返すメソッドです。
  CocodayoThemeModeState copyWith(CocodayoThemeMode themeMode) =>
      CocodayoThemeModeState(themeMode: themeMode);
}
