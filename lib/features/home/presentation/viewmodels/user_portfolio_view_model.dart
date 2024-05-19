import 'package:predictiva_task/app/core_common_libs.dart';
import 'package:predictiva_task/common_libs.dart';
import 'package:predictiva_task/features/home/domain/models.dart';
import 'package:predictiva_task/features/home/domain/user_interactor.dart';

class UserPortfolioViewModel extends StateNotifier<XState<UserPortfolioModel>> {
  final UserInteractor _userInteractor;
  UserPortfolioViewModel(
    this._userInteractor,
    super.state,
  );

  Future<void> fetch() async {
    state = const XState.loading();

    final response = await _userInteractor.getPortfolio();
    response.when(
      failure: (failure) {
        state = XState.error(failure.errorMessage());
      },
      success: (success) {
        state = XState.data(success);
      },
    );
  }
}
