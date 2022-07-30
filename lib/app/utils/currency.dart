import 'package:intl/intl.dart';

class Currency {
  static convertToBRL(double value) {
    return NumberFormat.currency(
            locale: "pt_BR", decimalDigits: 2, symbol: 'R\$')
        .format(value);
  }
}
