import 'package:predictiva_task/app/core_common_libs.dart';
import 'package:predictiva_task/common_libs.dart';
import 'package:predictiva_task/features/home/domain/models.dart';
import 'package:predictiva_task/features/home/domain/user_interactor.dart';

class OrderListViewModel extends StateNotifier<XState<OrderList>> {
  final UserInteractor _userInteractor;
  OrderListViewModel(
    this._userInteractor,
    super.state,
  );

  Future<void> fetch() async {
    state = const XState.loading();

    final response = await _userInteractor.getListOfOrders();
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
