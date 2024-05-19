import 'package:predictiva_task/app/core_common_libs.dart';
import 'package:predictiva_task/features/home/domain/user_repository.dart';
import 'models.dart';

class UserInteractor {
  final UserRepository _userRepository;
  const UserInteractor(this._userRepository);

  Future<Result<UserPortfolioModel, ResultErrorType>> getPortfolio() => _userRepository.getPortfolio();
  Future<Result<OrderList, ResultErrorType>> getListOfOrders({FilterModel? filter}) =>
      _userRepository.getListOfOrders(filter: filter);
}
