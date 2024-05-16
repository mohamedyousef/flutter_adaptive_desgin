import 'package:logger/logger.dart' as logger;

class Logger {
  Logger._();

  static final logger.Logger _logger = logger.Logger();

  static void v(String message, [StackTrace? stackTrace]) {
    _logger.t(message);
  }

  static void d(String message, [StackTrace? stackTrace]) {
    _logger.d(message);
  }

  static void i(String message, [StackTrace? stackTrace]) {
    _logger.i(message);
  }

  static void w(String message, [StackTrace? stackTrace]) {
    _logger.w(message);
  }

  static void e(String message, [StackTrace? stackTrace]) {
    _logger.e(message);
  }
}
