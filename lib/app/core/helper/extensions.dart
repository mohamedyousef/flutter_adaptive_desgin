import 'package:predictiva_task/app/core/models/models.dart';

import '../../../common_libs.dart' show $styles;
import 'error_message_mapper.dart';

extension ExtesnionsScale on num {
  double scale() {
    return $styles.scale * this;
  }
}

extension ExtensionErrorMessage on ResultErrorType {
  String errorMessage([String? message]) {
    return message ?? transformNetworkErrorMessage(this);
  }
}
