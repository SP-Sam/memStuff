import 'date_helper.dart';

const kIsEmpty = 'Campo obrigatório';
const kInvalidField = 'Preencha corretamente';
const kInvalidDate = 'Data inválida';

class ValidatorHelper {
  static String validator(String text) {
    if (text.isEmpty) {
      return kIsEmpty;
    } else {
      return null;
    }
  }

  static String phoneValidator(String text) {
    if (text.isEmpty) {
      return kIsEmpty;
    } else if (text.length != 14 && text.length != 15) {
      return kInvalidField;
    } else {
      return null;
    }
  }

  static String dateValidator(String text) {
    var date = DateHelper.parse(text);
    var today = DateTime.now();

    if (date.isAfter(today))
      return kInvalidDate;
    else
      return null;
  }
}
