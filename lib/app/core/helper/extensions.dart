import 'package:predictiva_task/app/core_common_libs.dart'
    show ResultErrorType, NetworkErrorType, transformErrorMessage;
import '../../../common_libs.dart' show $styles;

extension ExtesnionsScale on num {
  double scale() {
    return $styles.scale * this;
  }
}

extension ExtensionErrorMessage on ResultErrorType {
  String errorMessage([String? message]) {
    return message ?? transformErrorMessage(this);
  }
}

extension NetworkErrorTypeExtension on NetworkErrorType {
  ResultErrorType toResultErrorType() {
    switch (this) {
      case NetworkErrorType.cancel:
        return ResultErrorType.cancel;
      case NetworkErrorType.parsing:
        return ResultErrorType.parsing;
      case NetworkErrorType.unauthorised:
        return ResultErrorType.unauthorised;
      case NetworkErrorType.forbidden:
        return ResultErrorType.forbidden;
      case NetworkErrorType.noData:
        return ResultErrorType.noData;
      case NetworkErrorType.badConnection:
        return ResultErrorType.badConnection;
      case NetworkErrorType.server:
        return ResultErrorType.server;
      case NetworkErrorType.unprocessable:
        return ResultErrorType.unProcessable;
      case NetworkErrorType.badRequest:
      case NetworkErrorType.other:
        return ResultErrorType.other;
    }
  }
}
