import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

class LanguageCubit extends Cubit<Locale> {
  LanguageCubit() : super(_initialLocale());

  static const String _boxName = 'settings';
  static const String _key = 'language_code';

  static Locale _initialLocale() {
    final box = Hive.box(_boxName);
    final saved = box.get(_key) as String?;
    return saved != null ? Locale(saved) : const Locale('en');
  }

  void setLanguage(String languageCode) {
    final box = Hive.box(_boxName);
    box.put(_key, languageCode);
    emit(Locale(languageCode));
  }
}
