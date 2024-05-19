import 'package:json_annotation/json_annotation.dart';
import 'package:predictiva_task/features/home/domain/models.dart';

part 'entities.g.dart';

@JsonSerializable()
class UserPortfolioResponseEntity {
  @JsonKey(name: 'data')
  final UserPortfolioDataResponseEntity? data;
  const UserPortfolioResponseEntity(
    this.data,
  );

  factory UserPortfolioResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$UserPortfolioResponseEntityFromJson(json);
}

@JsonSerializable()
class UserPortfolioDataResponseEntity {
  @JsonKey(name: 'portfolio')
  final UserPortfolioEntity? userPortfolioEntity;

  const UserPortfolioDataResponseEntity(
    this.userPortfolioEntity,
  );

  factory UserPortfolioDataResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$UserPortfolioDataResponseEntityFromJson(json);
}

@JsonSerializable()
class UserPortfolioEntity {
  @JsonKey(name: 'balance')
  final double? balance;
  @JsonKey(name: 'profit')
  final double? profit;
  @JsonKey(name: 'profit_percentage')
  final double? profitPercentage;
  @JsonKey(name: 'assets')
  final int? assets;

  const UserPortfolioEntity(this.balance, this.profit, this.profitPercentage, this.assets);

  factory UserPortfolioEntity.fromJson(Map<String, dynamic> json) => _$UserPortfolioEntityFromJson(json);
}

@JsonSerializable()
class OrdersResponseEntity {
  @JsonKey(name: 'data')
  final OrderListEntity? data;
  const OrdersResponseEntity(
    this.data,
  );

  factory OrdersResponseEntity.fromJson(Map<String, dynamic> json) => _$OrdersResponseEntityFromJson(json);
}

@JsonSerializable()
class OrderListEntity {
  @JsonKey(name: 'orders')
  final List<OrderEntity>? orders;
  const OrderListEntity(this.orders);

  factory OrderListEntity.fromJson(Map<String, dynamic> json) => _$OrderListEntityFromJson(json);
}

@JsonSerializable()
class OrderEntity {
  @JsonKey(name: 'symbol')
  final String? symbol;
  @JsonKey(name: 'type')
  final String? type;
  @JsonKey(name: 'side')
  final SideType? side;
  @JsonKey(name: 'quantity')
  final double? quantity;
  @JsonKey(name: 'price')
  final double? price;
  @JsonKey(name: 'creation_time', fromJson: _fromJson)
  final DateTime creationTime;

  const OrderEntity(this.symbol, this.type, this.side, this.quantity, this.creationTime, this.price);

  factory OrderEntity.fromJson(Map<String, dynamic> json) => _$OrderEntityFromJson(json);

  static DateTime _fromJson(int millisecondsSinceEpoch) => DateTime.fromMillisecondsSinceEpoch(millisecondsSinceEpoch);
}
