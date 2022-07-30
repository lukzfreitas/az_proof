import 'package:az_proof/app/utils/label_english_constant.dart';
import 'package:az_proof/app/utils/label_portuguese_constant.dart';

class Language {
  static convertToPortuguese(String value) {
    switch (value.toLowerCase()) {
      case LabelEnglishConstant.CREDIT:
        return LabelPortugueseConstant.CREDIT;
      case LabelEnglishConstant.CREDIT_INSTALLMENTS:
        return LabelPortugueseConstant.CREDIT_INSTALLMENTS;
      case LabelEnglishConstant.PENDING:
        return LabelPortugueseConstant.PENDING;
      case LabelEnglishConstant.PIX:
        return LabelPortugueseConstant.PIX;
      case LabelEnglishConstant.SUCCESSEDED:
        return LabelPortugueseConstant.SUCCESSEDED;
      case 'aprovada':
        return 'Aprovada';
      case 'boleto':
        return 'Boleto';
      default:
        return 'Não informado';
    }
  }
}
