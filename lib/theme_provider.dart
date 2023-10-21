import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_theme/cocodayo_theme_mode.dart';

/// テーマ選択のProvider
final themeProvider =
    StateNotifierProvider<CocodayoThemeDataNotifier, CocodayoThemeMode>(
        (ref) => CocodayoThemeDataNotifier());

/// テーマの変更・記憶を行うStateNotifier
class CocodayoThemeDataNotifier extends StateNotifier<CocodayoThemeMode> {
  CocodayoThemeDataNotifier() : super(CocodayoThemeMode.normal);

  /// テーマの変更を行い、永続化
  void change(CocodayoThemeMode themeMode) => state = themeMode;
}
