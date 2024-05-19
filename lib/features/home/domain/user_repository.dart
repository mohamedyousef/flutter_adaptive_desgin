import 'package:predictiva_task/app/core_common_libs.dart';
import 'package:predictiva_task/features/home/domain/models.dart';

abstract class UserRepository {
  Future<Result<UserPortfolioModel, ResultErrorType>> getPortfolio();
  Future<Result<OrderList, ResultErrorType>> getListOfOrders({FilterModel? filter});
}
