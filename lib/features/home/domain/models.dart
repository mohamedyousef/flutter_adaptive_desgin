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
    required String creationTime,
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

  OrderModel operator [](final int index) => orders[index];

  int get length => orders.length;

  bool get isEmpty => orders.isEmpty;

  bool get isNotEmpty => orders.isNotEmpty;
}

@freezed
class FilterModel with _$FilterModel {
  const factory FilterModel() = _FilterModel;
}
