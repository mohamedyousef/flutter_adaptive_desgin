import 'package:predictiva_task/app/core_common_libs.dart';
import 'package:predictiva_task/common_libs.dart';
import 'package:predictiva_task/ui_components/compounds/app_scaffold.dart';

/// Add syntax sugar for quickly accessing the main "logic" controllers in the app
AppLogic get appLogic => AppLogic();

LocaleLogic get localeLogic => LocaleLogic();

/// Global helpers for readability
AppLocalization get $strings => localeLogic.strings;

AppStyle get $styles => AppScaffold.style;

const Enviroment enviroment = Enviroment.staging;
const baseUrlStaging = "https://stg.shohna.sa/graphql";
const baseUrlProd = "https://dev.shohna.sa/graphql";
const baseUrlDev = "https://dev.shohna.sa/graphql";

enum Enviroment { dev, staging, prod }

final baseUrlProvider = Provider((ref) {
  switch (enviroment) {
    case Enviroment.dev:
      return baseUrlDev;
    case Enviroment.staging:
      return baseUrlStaging;
    case Enviroment.prod:
      return baseUrlProd;
  }
});

// final networkServiceProvider = Provider(
//   (ref) {
//     return NetworkService(
//       baseUrlBuilder: () async => ref.watch(baseUrlProvider),
//     );
//   },
// );
