import 'package:intl/intl.dart';

class DateFormatter {
  static final _birthDateFormatter = DateFormat('dd MMM, yyyy');

  static String convertToStringDateFormat(DateTime value) {
    return _birthDateFormatter.format(value);
  }
}
