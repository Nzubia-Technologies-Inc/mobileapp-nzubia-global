import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ThemeCubit extends Cubit<ThemeMode> {
  ThemeCubit() : super(_initialTheme());

  static const String _boxName = 'settings';
  static const String _key = 'theme_mode';

  static ThemeMode _initialTheme() {
    final box = Hive.box(_boxName);
    return box.get(_key) == 'light' ? ThemeMode.light : ThemeMode.dark;
  }

  void toggleTheme() {
    final newMode = state == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    _saveTheme(newMode);
    emit(newMode);
  }

  void setTheme(ThemeMode mode) {
    _saveTheme(mode);
    emit(mode);
  }

  void _saveTheme(ThemeMode mode) {
    final box = Hive.box(_boxName);
    box.put(_key, mode == ThemeMode.dark ? 'dark' : 'light');
  }
}
