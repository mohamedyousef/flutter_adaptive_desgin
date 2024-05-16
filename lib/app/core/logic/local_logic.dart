import 'package:predictiva_task/common_libs.dart';

import '../../localization/generated/l10n.dart';

class LocaleLogic {
  final Locale _defaultLocal = const Locale('en');
  static LocaleLogic? _instance;

  AppLocalization? _strings;
  AppLocalization get strings => _strings!;
  bool get isLoaded => _strings != null;
  LocaleLogic._();

  factory LocaleLogic() {
    _instance ??= LocaleLogic._(); // Create instance if null
    return _instance!;
  }

  Future<void> load() async {
    _strings = await AppLocalization.delegate.load(_defaultLocal);
  }
}
