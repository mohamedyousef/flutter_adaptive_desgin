import 'package:predictiva_task/common_libs.dart';
import 'package:predictiva_task/features/home/data/entities.dart';
import 'package:predictiva_task/features/home/domain/models.dart';

class UsersMapper {
  UserPortfolioModel? transformToUserPortfolioModel(UserPortfolioResponseEntity? entity) {
    final assets = entity?.data?.userPortfolioEntity?.assets;
    final balance = entity?.data?.userPortfolioEntity?.balance;
    final profitPercentage = entity?.data?.userPortfolioEntity?.profitPercentage;
    final profits = entity?.data?.userPortfolioEntity?.profit;
    if (profits == null || balance == null || profitPercentage == null || assets == null) return null;
    return UserPortfolioModel(balance: balance, profits: profits, profitPercentage: profitPercentage, assets: assets);
  }

  OrderList? transformToOrdersListModel(OrdersResponseEntity? entity) {
    final orders = entity?.data?.orders?.map(transformToOrderModel).whereNotNull().toList();
    if (orders == null) return null;
    return OrderList(orders: orders);
  }

  OrderModel? transformToOrderModel(OrderEntity? entity) {
    final quantity = entity?.quantity;
    final symbol = entity?.symbol;
    final side = entity?.side;
    final type = entity?.type;
    final price = entity?.price;

    final creationTime = entity?.creationTime;
    if (quantity == null || price == null || type == null || symbol == null || side == null || creationTime == null) {
      return null;
    }

    return OrderModel(
        quantity: quantity, price: price, symbol: symbol, type: type, side: side, creationTime: creationTime);
  }
}
