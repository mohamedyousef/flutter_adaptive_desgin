import 'package:predictiva_task/common_libs.dart';
import 'package:predictiva_task/features/home/domain/models.dart';

class OrdersFilterViewModel extends StateNotifier<FilterModel> {
  final Ref _ref;
  OrdersFilterViewModel(this._ref, super.state);

  bool get isValid => state.isNotEmpty;

  void setPrice(String price) {
    state = state.copyWith(price: double.tryParse(price));
  }

  void setStartDate(DateTime start) {
    state = state.copyWith(start: start);
  }

  void setEndDate(DateTime end) {
    state = state.copyWith(end: end);
  }

  void setSymbol(String? symbol) {
    state = state.copyWith(symbol: symbol);
  }

  void submit() {
    _ref.read(ordersListViewModel.notifier).applyFilter(state);
  }
}
