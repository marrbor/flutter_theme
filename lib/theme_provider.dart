import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_theme/cocodayo_theme_mode.dart';
import 'package:flutter_theme/cocodayo_theme_mode_state.dart';

/// テーマ選択のProvider
final themeProvider =
    StateNotifierProvider<_ThemeDataNotifier, CocodayoThemeModeState>(
        (ref) => _ThemeDataNotifier());

/// テーマの変更・記憶を行うStateNotifier
class _ThemeDataNotifier extends StateNotifier<CocodayoThemeModeState> {
  _ThemeDataNotifier() : super(const CocodayoThemeModeState(themeMode: CocodayoThemeMode.normal));

  /// テーマの変更を行い、永続化
  void change(CocodayoThemeMode themeMode) => state = state.copyWith(themeMode);
}
