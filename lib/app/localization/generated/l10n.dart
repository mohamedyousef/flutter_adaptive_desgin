// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class AppLocalization {
  AppLocalization();

  static AppLocalization? _current;

  static AppLocalization get current {
    assert(_current != null,
        'No instance of AppLocalization was loaded. Try to initialize the AppLocalization delegate before accessing AppLocalization.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<AppLocalization> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = AppLocalization();
      AppLocalization._current = instance;

      return instance;
    });
  }

  static AppLocalization of(BuildContext context) {
    final instance = AppLocalization.maybeOf(context);
    assert(instance != null,
        'No instance of AppLocalization present in the widget tree. Did you add AppLocalization.delegate in localizationsDelegates?');
    return instance!;
  }

  static AppLocalization? maybeOf(BuildContext context) {
    return Localizations.of<AppLocalization>(context, AppLocalization);
  }

  /// `en`
  String get localeName {
    return Intl.message(
      'en',
      name: 'localeName',
      desc: '',
      args: [],
    );
  }

  /// `Predictiva Task`
  String get appName {
    return Intl.message(
      'Predictiva Task',
      name: 'appName',
      desc: '',
      args: [],
    );
  }

  /// `Try Again`
  String get tryAgainButton {
    return Intl.message(
      'Try Again',
      name: 'tryAgainButton',
      desc: '',
      args: [],
    );
  }

  /// `The request was canceled.`
  String get cancelNetworkErrorMessage {
    return Intl.message(
      'The request was canceled.',
      name: 'cancelNetworkErrorMessage',
      desc: '',
      args: [],
    );
  }

  /// `Error parsing response data.`
  String get parsingNetworkErrorMessage {
    return Intl.message(
      'Error parsing response data.',
      name: 'parsingNetworkErrorMessage',
      desc: '',
      args: [],
    );
  }

  /// `Unauthorized access.`
  String get unauthorisedNetworkErrorMessage {
    return Intl.message(
      'Unauthorized access.',
      name: 'unauthorisedNetworkErrorMessage',
      desc: '',
      args: [],
    );
  }

  /// `Access to the resource is forbidden.`
  String get forbiddenNetworkErrorMessage {
    return Intl.message(
      'Access to the resource is forbidden.',
      name: 'forbiddenNetworkErrorMessage',
      desc: '',
      args: [],
    );
  }

  /// `No data available.`
  String get noDataNetworkErrorMessage {
    return Intl.message(
      'No data available.',
      name: 'noDataNetworkErrorMessage',
      desc: '',
      args: [],
    );
  }

  /// `The server cannot process the request.`
  String get unProcessableNetworkErrorMessage {
    return Intl.message(
      'The server cannot process the request.',
      name: 'unProcessableNetworkErrorMessage',
      desc: '',
      args: [],
    );
  }

  /// `Bad network connection.`
  String get badConnectionErrorMessage {
    return Intl.message(
      'Bad network connection.',
      name: 'badConnectionErrorMessage',
      desc: '',
      args: [],
    );
  }

  /// `Server error.`
  String get serverNetworkErrorMessage {
    return Intl.message(
      'Server error.',
      name: 'serverNetworkErrorMessage',
      desc: '',
      args: [],
    );
  }

  /// `An error occurred. Please try again later.`
  String get otherNetworkErrorMessage {
    return Intl.message(
      'An error occurred. Please try again later.',
      name: 'otherNetworkErrorMessage',
      desc: '',
      args: [],
    );
  }

  /// `Failed to upload.`
  String get uploadingFailedNetworkErrorMessage {
    return Intl.message(
      'Failed to upload.',
      name: 'uploadingFailedNetworkErrorMessage',
      desc: '',
      args: [],
    );
  }

  /// `Insufficient permissions to perform this action.`
  String get insufficientPermissionsNetworkErrorMessage {
    return Intl.message(
      'Insufficient permissions to perform this action.',
      name: 'insufficientPermissionsNetworkErrorMessage',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong.`
  String get sometingWentWrong {
    return Intl.message(
      'Something went wrong.',
      name: 'sometingWentWrong',
      desc: '',
      args: [],
    );
  }

  /// `It looks like you have no internet connection`
  String get noInternet {
    return Intl.message(
      'It looks like you have no internet connection',
      name: 'noInternet',
      desc: '',
      args: [],
    );
  }

  /// `This subscription expires in a month`
  String get subscriptionExpiredMessage {
    return Intl.message(
      'This subscription expires in a month',
      name: 'subscriptionExpiredMessage',
      desc: '',
      args: [],
    );
  }

  /// `Profits`
  String get userPortfolioProfitsTitle {
    return Intl.message(
      'Profits',
      name: 'userPortfolioProfitsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Assets`
  String get userPortfolioAssetsTitle {
    return Intl.message(
      'Assets',
      name: 'userPortfolioAssetsTitle',
      desc: '',
      args: [],
    );
  }

  /// `{number}%`
  String userPortfolioProfitsPercentageValue(Object number) {
    return Intl.message(
      '$number%',
      name: 'userPortfolioProfitsPercentageValue',
      desc: '',
      args: [number],
    );
  }

  /// `Balance`
  String get userPortfolioBalanceTitle {
    return Intl.message(
      'Balance',
      name: 'userPortfolioBalanceTitle',
      desc: '',
      args: [],
    );
  }

  /// `${number}`
  String price(Object number) {
    return Intl.message(
      '\$$number',
      name: 'price',
      desc: '',
      args: [number],
    );
  }

  /// `Filter`
  String get filter {
    return Intl.message(
      'Filter',
      name: 'filter',
      desc: '',
      args: [],
    );
  }

  /// `Open Trades`
  String get openTrades {
    return Intl.message(
      'Open Trades',
      name: 'openTrades',
      desc: '',
      args: [],
    );
  }

  /// `Symbol`
  String get symbol {
    return Intl.message(
      'Symbol',
      name: 'symbol',
      desc: '',
      args: [],
    );
  }

  /// `Price`
  String get priceKey {
    return Intl.message(
      'Price',
      name: 'priceKey',
      desc: '',
      args: [],
    );
  }

  /// `Type`
  String get type {
    return Intl.message(
      'Type',
      name: 'type',
      desc: '',
      args: [],
    );
  }

  /// `Date`
  String get date {
    return Intl.message(
      'Date',
      name: 'date',
      desc: '',
      args: [],
    );
  }

  /// `Quantity`
  String get quantity {
    return Intl.message(
      'Quantity',
      name: 'quantity',
      desc: '',
      args: [],
    );
  }

  /// `Action`
  String get action {
    return Intl.message(
      'Action',
      name: 'action',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalization> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<AppLocalization> load(Locale locale) => AppLocalization.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
