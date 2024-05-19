import 'package:predictiva_task/app/core_common_libs.dart';
import 'package:predictiva_task/features/home/data/mapper.dart';
import 'package:predictiva_task/features/home/domain/models.dart';
import 'package:predictiva_task/features/home/domain/user_repository.dart';
import 'entities.dart';

class UserRepositoryImpl implements UserRepository {
  final NetworkService _networkService;
  final UsersMapper _mapper;
  const UserRepositoryImpl(
    this._networkService,
    this._mapper,
  );

  @override
  Future<Result<OrderList, ResultErrorType>> getListOfOrders({FilterModel? filter}) async {
    try {
      final NetworkResponse<OrdersResponseEntity?> response = await _networkService.request(
        request: NetworkRequest.get(
          endpoint: 'orders/open',
        ),
        fromJson: OrdersResponseEntity.fromJson,
      );

      return response.when(
        success: (data) {
          final peopleList = _mapper.transformToOrdersListModel(data);
          if (peopleList != null) {
            return Result.success(peopleList);
          } else {
            return const Result.failure(ResultErrorType.parsing);
          }
        },
        failure: (error) => Result.failure(error.toResultErrorType()),
      );
    } catch (e) {
      return const Result.failure(ResultErrorType.other);
    }
  }

  @override
  Future<Result<UserPortfolioModel, ResultErrorType>> getPortfolio() async {
    try {
      final NetworkResponse<UserPortfolioResponseEntity> response = await _networkService.request(
        request: NetworkRequest.get(
          endpoint: 'accounts/portfolio',
        ),
        fromJson: UserPortfolioResponseEntity.fromJson,
      );

      return response.when(
        success: (data) {
          final peopleList = _mapper.transformToUserPortfolioModel(data);
          if (peopleList != null) {
            return Result.success(peopleList);
          } else {
            return const Result.failure(ResultErrorType.parsing);
          }
        },
        failure: (error) => Result.failure(error.toResultErrorType()),
      );
    } catch (e) {
      return const Result.failure(ResultErrorType.other);
    }
  }
}
