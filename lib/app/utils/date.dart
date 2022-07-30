
import 'package:intl/intl.dart';

class Date {
  static String convertDate(String value) {
    return DateFormat.yMd('pt_BR').format(DateTime.parse(value));
  }
}
