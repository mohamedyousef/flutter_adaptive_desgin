// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserPortfolioResponseEntity _$UserPortfolioResponseEntityFromJson(
        Map<String, dynamic> json) =>
    UserPortfolioResponseEntity(
      json['data'] == null
          ? null
          : UserPortfolioDataResponseEntity.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserPortfolioResponseEntityToJson(
        UserPortfolioResponseEntity instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

UserPortfolioDataResponseEntity _$UserPortfolioDataResponseEntityFromJson(
        Map<String, dynamic> json) =>
    UserPortfolioDataResponseEntity(
      json['portfolio'] == null
          ? null
          : UserPortfolioEntity.fromJson(
              json['portfolio'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserPortfolioDataResponseEntityToJson(
        UserPortfolioDataResponseEntity instance) =>
    <String, dynamic>{
      'portfolio': instance.userPortfolioEntity,
    };

UserPortfolioEntity _$UserPortfolioEntityFromJson(Map<String, dynamic> json) =>
    UserPortfolioEntity(
      (json['balance'] as num?)?.toDouble(),
      (json['profit'] as num?)?.toDouble(),
      (json['profit_percentage'] as num?)?.toDouble(),
      (json['assets'] as num?)?.toInt(),
    );

Map<String, dynamic> _$UserPortfolioEntityToJson(
        UserPortfolioEntity instance) =>
    <String, dynamic>{
      'balance': instance.balance,
      'profit': instance.profit,
      'profit_percentage': instance.profitPercentage,
      'assets': instance.assets,
    };

OrdersResponseEntity _$OrdersResponseEntityFromJson(
        Map<String, dynamic> json) =>
    OrdersResponseEntity(
      json['data'] == null
          ? null
          : OrderListEntity.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrdersResponseEntityToJson(
        OrdersResponseEntity instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

OrderListEntity _$OrderListEntityFromJson(Map<String, dynamic> json) =>
    OrderListEntity(
      (json['orders'] as List<dynamic>?)
          ?.map((e) => OrderEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OrderListEntityToJson(OrderListEntity instance) =>
    <String, dynamic>{
      'orders': instance.orders,
    };

OrderEntity _$OrderEntityFromJson(Map<String, dynamic> json) => OrderEntity(
      json['symbol'] as String?,
      json['type'] as String?,
      json['side'] as String?,
      (json['quantity'] as num?)?.toDouble(),
      OrderEntity._fromJson((json['creation_time'] as num).toInt()),
      (json['price'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$OrderEntityToJson(OrderEntity instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'type': instance.type,
      'side': instance.side,
      'quantity': instance.quantity,
      'price': instance.price,
      'creation_time': instance.creationTime.toIso8601String(),
    };
