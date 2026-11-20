import 'package:collection/collection.dart';
import 'package:flutter/widgets.dart';

enum LocaleType {
  system(null),
  en(Locale('en', 'GB')),
  de(Locale('de')),
  fr(Locale('fr')),
  it(Locale('it')),
  ru(Locale('ru')),
  ja(Locale('ja')),
  /// Simplified Chinese (`intl_zh.arb`, `@@locale` = zh).
  /// Traditional Chinese is not part of this catalog.
  zh(Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hans')),
  ko(Locale('ko'));

  final Locale? value;

  const LocaleType(this.value);

  factory LocaleType.fromString(String value) => values.firstWhere((e) => e.name == value);

  static LocaleType? fromLocale(Locale locale) =>
      values.firstWhereOrNull((e) => e.value?.languageCode == locale.languageCode);
}
