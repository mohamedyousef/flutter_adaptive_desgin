import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';

@freezed
class UserPortfolioModel with _$UserPortfolioModel {
  const factory UserPortfolioModel({
    required double balance,
    required double profits,
    required double profitPercentage,
    required int assets,
  }) = _UserPortfolioModel;
}

@freezed
class OrderModel with _$OrderModel {
  const factory OrderModel({
    required double quantity,
    required double price,
    required String symbol,
    required String type,
    required String side,
    required DateTime creationTime,
  }) = _OrderModel;
}

@freezed
class OrderList with _$OrderList {
  const factory OrderList({
    required List<OrderModel> orders,
  }) = _OrdersList;

  factory OrderList.initial() => const OrderList(
        orders: [],
      );
  const OrderList._();

  OrderModel operator [](int index) => orders[index];

  int get length => orders.length;

  bool get isEmpty => orders.isEmpty;

  bool get isNotEmpty => orders.isNotEmpty;
}

@freezed
abstract class FilterModel with _$FilterModel {
  const factory FilterModel({
    DateTime? end,
    DateTime? start,
    String? symbol,
    double? price,
  }) = _FilterModel;

  const FilterModel._();

  factory FilterModel.initial() => const FilterModel();

  bool get isNotEmpty => (start != null && end != null) || (symbol != null && symbol!.isNotEmpty) || price != null;
}
