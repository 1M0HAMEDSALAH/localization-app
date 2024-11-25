import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

class AppLocale {
  Locale locale;
  Map<String, String> _localizedValues = {};

  AppLocale(this.locale);

  static AppLocale of(BuildContext context) {
    return Localizations.of(context, AppLocale)!;
  }

  Future<void> load() async {
    String langFile = await rootBundle.loadString('assets/localization/${locale.languageCode}.json');
    Map<String, dynamic> json = jsonDecode(langFile);
    _localizedValues = json.map((key, value) => MapEntry(key, value.toString()));
  }

  String getTranslated(String key) {
    return _localizedValues[key] ?? key;
  }

  static const LocalizationsDelegate<AppLocale> delegate = _AppLocalizationsDelegate();
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocale> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['en', 'ar', 'fr'].contains(locale.languageCode);
  }

  @override
  Future<AppLocale> load(Locale locale) async {
    AppLocale appLocale = AppLocale(locale);
    await appLocale.load();
    return appLocale;
  }

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}
