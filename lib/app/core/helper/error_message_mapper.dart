import 'package:predictiva_task/app/core/models/models.dart';
import '../../../common_libs.dart';

String transformErrorMessage(ResultErrorType resultErrorType) {
  switch (resultErrorType) {
    case ResultErrorType.cancel:
      return $strings.cancelNetworkErrorMessage;
    case ResultErrorType.parsing:
      return $strings.parsingNetworkErrorMessage;
    case ResultErrorType.unauthorised:
      return $strings.unauthorisedNetworkErrorMessage;
    case ResultErrorType.forbidden:
      return $strings.forbiddenNetworkErrorMessage;
    case ResultErrorType.noData:
      return $strings.noDataNetworkErrorMessage;
    case ResultErrorType.unProcessable:
      return $strings.unProcessableNetworkErrorMessage;
    case ResultErrorType.badConnection:
      return $strings.badConnectionErrorMessage;
    case ResultErrorType.server:
      return $strings.serverNetworkErrorMessage;
    case ResultErrorType.other:
      return $strings.otherNetworkErrorMessage;
    case ResultErrorType.uploadingFailed:
      return $strings.uploadingFailedNetworkErrorMessage;
    case ResultErrorType.insufficientPermissions:
      return $strings.insufficientPermissionsNetworkErrorMessage;

    default:
      return $strings.sometingWentWrong;
  }
}
