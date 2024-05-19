import 'package:predictiva_task/app/core_common_libs.dart';
import 'package:predictiva_task/common_libs.dart';
import 'package:predictiva_task/features/home/data/mapper.dart';
import 'package:predictiva_task/features/home/data/user_repository_impl.dart';
import 'package:predictiva_task/features/home/domain/models.dart';
import 'package:predictiva_task/features/home/domain/user_interactor.dart';
import 'package:predictiva_task/features/home/domain/user_repository.dart';
import 'package:predictiva_task/features/home/presentation/viewmodels/order_list_view_model.dart';
import 'package:predictiva_task/features/home/presentation/viewmodels/user_portfolio_view_model.dart';
import 'package:predictiva_task/ui_components/compounds/app_scaffold.dart';

/// Add syntax sugar for quickly accessing the main "logic" controllers in the app
AppLogic get appLogic => AppLogic();

LocaleLogic get localeLogic => LocaleLogic();

/// Global helpers for readability
AppLocalization get $strings => localeLogic.strings;

AppStyle get $styles => AppScaffold.style;

const Enviroment enviroment = Enviroment.staging;
const baseUrlStaging = "http://api-cryptiva.azure-api.net/staging/api/v1/";
const baseUrlProd = "http://api-cryptiva.azure-api.net/staging/api/v1/";
const baseUrlDev = "http://api-cryptiva.azure-api.net/staging/api/v1/";

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

final _networkServiceProvider = Provider(
  (ref) {
    return NetworkService(
      baseUrlBuilder: () async => ref.watch(baseUrlProvider),
    );
  },
);

final _userMapperProvider = Provider((ref) {
  return UsersMapper();
});

final _userRepositoryProvider = Provider<UserRepository>((ref) {
  return UserRepositoryImpl(
    ref.watch(_networkServiceProvider),
    ref.watch(_userMapperProvider),
  );
});
final _userInteractorProvider = Provider<UserInteractor>((ref) {
  return UserInteractor(ref.watch(_userRepositoryProvider));
});

final userPortfolioViewModelProvider = StateNotifierProvider<UserPortfolioViewModel, XState<UserPortfolioModel>>((ref) {
  return UserPortfolioViewModel(
    ref.watch(_userInteractorProvider),
    const XState.initial(),
  )..fetch();
});

final ordersListViewModel = StateNotifierProvider<OrderListViewModel, XState<OrderList>>((ref) {
  return OrderListViewModel(
    ref.watch(_userInteractorProvider),
    const XState.initial(),
  )..fetch();
});
