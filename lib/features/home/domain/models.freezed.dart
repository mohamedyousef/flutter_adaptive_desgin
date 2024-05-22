// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserPortfolioModel {
  double get balance => throw _privateConstructorUsedError;
  double get profits => throw _privateConstructorUsedError;
  double get profitPercentage => throw _privateConstructorUsedError;
  int get assets => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserPortfolioModelCopyWith<UserPortfolioModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPortfolioModelCopyWith<$Res> {
  factory $UserPortfolioModelCopyWith(
          UserPortfolioModel value, $Res Function(UserPortfolioModel) then) =
      _$UserPortfolioModelCopyWithImpl<$Res, UserPortfolioModel>;
  @useResult
  $Res call(
      {double balance, double profits, double profitPercentage, int assets});
}

/// @nodoc
class _$UserPortfolioModelCopyWithImpl<$Res, $Val extends UserPortfolioModel>
    implements $UserPortfolioModelCopyWith<$Res> {
  _$UserPortfolioModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balance = null,
    Object? profits = null,
    Object? profitPercentage = null,
    Object? assets = null,
  }) {
    return _then(_value.copyWith(
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      profits: null == profits
          ? _value.profits
          : profits // ignore: cast_nullable_to_non_nullable
              as double,
      profitPercentage: null == profitPercentage
          ? _value.profitPercentage
          : profitPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      assets: null == assets
          ? _value.assets
          : assets // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserPortfolioModelImplCopyWith<$Res>
    implements $UserPortfolioModelCopyWith<$Res> {
  factory _$$UserPortfolioModelImplCopyWith(_$UserPortfolioModelImpl value,
          $Res Function(_$UserPortfolioModelImpl) then) =
      __$$UserPortfolioModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double balance, double profits, double profitPercentage, int assets});
}

/// @nodoc
class __$$UserPortfolioModelImplCopyWithImpl<$Res>
    extends _$UserPortfolioModelCopyWithImpl<$Res, _$UserPortfolioModelImpl>
    implements _$$UserPortfolioModelImplCopyWith<$Res> {
  __$$UserPortfolioModelImplCopyWithImpl(_$UserPortfolioModelImpl _value,
      $Res Function(_$UserPortfolioModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balance = null,
    Object? profits = null,
    Object? profitPercentage = null,
    Object? assets = null,
  }) {
    return _then(_$UserPortfolioModelImpl(
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      profits: null == profits
          ? _value.profits
          : profits // ignore: cast_nullable_to_non_nullable
              as double,
      profitPercentage: null == profitPercentage
          ? _value.profitPercentage
          : profitPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      assets: null == assets
          ? _value.assets
          : assets // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UserPortfolioModelImpl implements _UserPortfolioModel {
  const _$UserPortfolioModelImpl(
      {required this.balance,
      required this.profits,
      required this.profitPercentage,
      required this.assets});

  @override
  final double balance;
  @override
  final double profits;
  @override
  final double profitPercentage;
  @override
  final int assets;

  @override
  String toString() {
    return 'UserPortfolioModel(balance: $balance, profits: $profits, profitPercentage: $profitPercentage, assets: $assets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserPortfolioModelImpl &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.profits, profits) || other.profits == profits) &&
            (identical(other.profitPercentage, profitPercentage) ||
                other.profitPercentage == profitPercentage) &&
            (identical(other.assets, assets) || other.assets == assets));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, balance, profits, profitPercentage, assets);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserPortfolioModelImplCopyWith<_$UserPortfolioModelImpl> get copyWith =>
      __$$UserPortfolioModelImplCopyWithImpl<_$UserPortfolioModelImpl>(
          this, _$identity);
}

abstract class _UserPortfolioModel implements UserPortfolioModel {
  const factory _UserPortfolioModel(
      {required final double balance,
      required final double profits,
      required final double profitPercentage,
      required final int assets}) = _$UserPortfolioModelImpl;

  @override
  double get balance;
  @override
  double get profits;
  @override
  double get profitPercentage;
  @override
  int get assets;
  @override
  @JsonKey(ignore: true)
  _$$UserPortfolioModelImplCopyWith<_$UserPortfolioModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OrderModel {
  double get quantity => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get side => throw _privateConstructorUsedError;
  DateTime get creationTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderModelCopyWith<OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderModelCopyWith<$Res> {
  factory $OrderModelCopyWith(
          OrderModel value, $Res Function(OrderModel) then) =
      _$OrderModelCopyWithImpl<$Res, OrderModel>;
  @useResult
  $Res call(
      {double quantity,
      double price,
      String symbol,
      String type,
      String side,
      DateTime creationTime});
}

/// @nodoc
class _$OrderModelCopyWithImpl<$Res, $Val extends OrderModel>
    implements $OrderModelCopyWith<$Res> {
  _$OrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = null,
    Object? price = null,
    Object? symbol = null,
    Object? type = null,
    Object? side = null,
    Object? creationTime = null,
  }) {
    return _then(_value.copyWith(
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      side: null == side
          ? _value.side
          : side // ignore: cast_nullable_to_non_nullable
              as String,
      creationTime: null == creationTime
          ? _value.creationTime
          : creationTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderModelImplCopyWith<$Res>
    implements $OrderModelCopyWith<$Res> {
  factory _$$OrderModelImplCopyWith(
          _$OrderModelImpl value, $Res Function(_$OrderModelImpl) then) =
      __$$OrderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double quantity,
      double price,
      String symbol,
      String type,
      String side,
      DateTime creationTime});
}

/// @nodoc
class __$$OrderModelImplCopyWithImpl<$Res>
    extends _$OrderModelCopyWithImpl<$Res, _$OrderModelImpl>
    implements _$$OrderModelImplCopyWith<$Res> {
  __$$OrderModelImplCopyWithImpl(
      _$OrderModelImpl _value, $Res Function(_$OrderModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = null,
    Object? price = null,
    Object? symbol = null,
    Object? type = null,
    Object? side = null,
    Object? creationTime = null,
  }) {
    return _then(_$OrderModelImpl(
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      side: null == side
          ? _value.side
          : side // ignore: cast_nullable_to_non_nullable
              as String,
      creationTime: null == creationTime
          ? _value.creationTime
          : creationTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$OrderModelImpl implements _OrderModel {
  const _$OrderModelImpl(
      {required this.quantity,
      required this.price,
      required this.symbol,
      required this.type,
      required this.side,
      required this.creationTime});

  @override
  final double quantity;
  @override
  final double price;
  @override
  final String symbol;
  @override
  final String type;
  @override
  final String side;
  @override
  final DateTime creationTime;

  @override
  String toString() {
    return 'OrderModel(quantity: $quantity, price: $price, symbol: $symbol, type: $type, side: $side, creationTime: $creationTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderModelImpl &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.side, side) || other.side == side) &&
            (identical(other.creationTime, creationTime) ||
                other.creationTime == creationTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, quantity, price, symbol, type, side, creationTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderModelImplCopyWith<_$OrderModelImpl> get copyWith =>
      __$$OrderModelImplCopyWithImpl<_$OrderModelImpl>(this, _$identity);
}

abstract class _OrderModel implements OrderModel {
  const factory _OrderModel(
      {required final double quantity,
      required final double price,
      required final String symbol,
      required final String type,
      required final String side,
      required final DateTime creationTime}) = _$OrderModelImpl;

  @override
  double get quantity;
  @override
  double get price;
  @override
  String get symbol;
  @override
  String get type;
  @override
  String get side;
  @override
  DateTime get creationTime;
  @override
  @JsonKey(ignore: true)
  _$$OrderModelImplCopyWith<_$OrderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OrderList {
  List<OrderModel> get orders => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderListCopyWith<OrderList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderListCopyWith<$Res> {
  factory $OrderListCopyWith(OrderList value, $Res Function(OrderList) then) =
      _$OrderListCopyWithImpl<$Res, OrderList>;
  @useResult
  $Res call({List<OrderModel> orders});
}

/// @nodoc
class _$OrderListCopyWithImpl<$Res, $Val extends OrderList>
    implements $OrderListCopyWith<$Res> {
  _$OrderListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
  }) {
    return _then(_value.copyWith(
      orders: null == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrdersListImplCopyWith<$Res>
    implements $OrderListCopyWith<$Res> {
  factory _$$OrdersListImplCopyWith(
          _$OrdersListImpl value, $Res Function(_$OrdersListImpl) then) =
      __$$OrdersListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<OrderModel> orders});
}

/// @nodoc
class __$$OrdersListImplCopyWithImpl<$Res>
    extends _$OrderListCopyWithImpl<$Res, _$OrdersListImpl>
    implements _$$OrdersListImplCopyWith<$Res> {
  __$$OrdersListImplCopyWithImpl(
      _$OrdersListImpl _value, $Res Function(_$OrdersListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
  }) {
    return _then(_$OrdersListImpl(
      orders: null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>,
    ));
  }
}

/// @nodoc

class _$OrdersListImpl extends _OrdersList {
  const _$OrdersListImpl({required final List<OrderModel> orders})
      : _orders = orders,
        super._();

  final List<OrderModel> _orders;
  @override
  List<OrderModel> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  String toString() {
    return 'OrderList(orders: $orders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrdersListImpl &&
            const DeepCollectionEquality().equals(other._orders, _orders));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_orders));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrdersListImplCopyWith<_$OrdersListImpl> get copyWith =>
      __$$OrdersListImplCopyWithImpl<_$OrdersListImpl>(this, _$identity);
}

abstract class _OrdersList extends OrderList {
  const factory _OrdersList({required final List<OrderModel> orders}) =
      _$OrdersListImpl;
  const _OrdersList._() : super._();

  @override
  List<OrderModel> get orders;
  @override
  @JsonKey(ignore: true)
  _$$OrdersListImplCopyWith<_$OrdersListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FilterModel {
  DateTime? get end => throw _privateConstructorUsedError;
  DateTime? get start => throw _privateConstructorUsedError;
  String? get symbol => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilterModelCopyWith<FilterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterModelCopyWith<$Res> {
  factory $FilterModelCopyWith(
          FilterModel value, $Res Function(FilterModel) then) =
      _$FilterModelCopyWithImpl<$Res, FilterModel>;
  @useResult
  $Res call({DateTime? end, DateTime? start, String? symbol, double? price});
}

/// @nodoc
class _$FilterModelCopyWithImpl<$Res, $Val extends FilterModel>
    implements $FilterModelCopyWith<$Res> {
  _$FilterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? end = freezed,
    Object? start = freezed,
    Object? symbol = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      symbol: freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilterModelImplCopyWith<$Res>
    implements $FilterModelCopyWith<$Res> {
  factory _$$FilterModelImplCopyWith(
          _$FilterModelImpl value, $Res Function(_$FilterModelImpl) then) =
      __$$FilterModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime? end, DateTime? start, String? symbol, double? price});
}

/// @nodoc
class __$$FilterModelImplCopyWithImpl<$Res>
    extends _$FilterModelCopyWithImpl<$Res, _$FilterModelImpl>
    implements _$$FilterModelImplCopyWith<$Res> {
  __$$FilterModelImplCopyWithImpl(
      _$FilterModelImpl _value, $Res Function(_$FilterModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? end = freezed,
    Object? start = freezed,
    Object? symbol = freezed,
    Object? price = freezed,
  }) {
    return _then(_$FilterModelImpl(
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      symbol: freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$FilterModelImpl extends _FilterModel {
  const _$FilterModelImpl({this.end, this.start, this.symbol, this.price})
      : super._();

  @override
  final DateTime? end;
  @override
  final DateTime? start;
  @override
  final String? symbol;
  @override
  final double? price;

  @override
  String toString() {
    return 'FilterModel(end: $end, start: $start, symbol: $symbol, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterModelImpl &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode => Object.hash(runtimeType, end, start, symbol, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterModelImplCopyWith<_$FilterModelImpl> get copyWith =>
      __$$FilterModelImplCopyWithImpl<_$FilterModelImpl>(this, _$identity);
}

abstract class _FilterModel extends FilterModel {
  const factory _FilterModel(
      {final DateTime? end,
      final DateTime? start,
      final String? symbol,
      final double? price}) = _$FilterModelImpl;
  const _FilterModel._() : super._();

  @override
  DateTime? get end;
  @override
  DateTime? get start;
  @override
  String? get symbol;
  @override
  double? get price;
  @override
  @JsonKey(ignore: true)
  _$$FilterModelImplCopyWith<_$FilterModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
