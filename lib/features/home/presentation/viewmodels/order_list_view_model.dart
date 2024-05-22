import 'package:predictiva_task/app/core_common_libs.dart';
import 'package:predictiva_task/common_libs.dart';
import 'package:predictiva_task/features/home/domain/models.dart';
import 'package:predictiva_task/features/home/domain/user_interactor.dart';

class OrderListViewModel extends StateNotifier<XState<OrderList>> {
  final UserInteractor _userInteractor;
  late OrderList _originalData;

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
      success: (data) {
        state = XState.data(data);
        _originalData = data;
      },
    );
  }

  void applyFilter(FilterModel filter) {
    var filteredOrders = _originalData.orders;

    if (filter.price != null) {
      filteredOrders = filteredOrders.where((order) => order.price == filter.price).toList();
    }
    if (filter.start != null) {
      filteredOrders = filteredOrders.where((order) => order.creationTime.isAfter(filter.start!)).toList();
    }
    if (filter.end != null) {
      filteredOrders = filteredOrders.where((order) => order.creationTime.isBefore(filter.end!)).toList();
    }
    if (filter.symbol != null) {
      filteredOrders = filteredOrders.where((order) => order.symbol == filter.symbol).toList();
    }

    state = XState.data(OrderList(orders: filteredOrders));
  }
}
