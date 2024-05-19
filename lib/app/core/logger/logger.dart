import 'package:predictiva_task/common_libs.dart';

class Logger {
  Logger._();

  static void d(String message, [StackTrace? stackTrace]) {
    debugPrint(message);
  }
}
