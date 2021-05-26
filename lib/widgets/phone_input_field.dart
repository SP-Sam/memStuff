import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import '../helpers/validator_helper.dart';

class PhoneInputField extends StatelessWidget {
  final IconData icon;
  final String label;
  final String initialValue;
  final Function(String) onSaved;

  const PhoneInputField({
    Key key,
    this.icon,
    this.label,
    this.initialValue,
    this.onSaved,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var phoneFormatter = new MaskTextInputFormatter(
      mask: '(##) #####-####',
      filter: {"#": RegExp(r'[0-9]')},
    );
    return TextFormField(
      initialValue: initialValue,
      keyboardType: TextInputType.number,
      onSaved: onSaved,
      validator: ValidatorHelper.phoneValidator,
      decoration: InputDecoration(
        prefixIcon: Icon(icon),
        labelText: label,
      ),
      inputFormatters: [phoneFormatter],
    );
  }
}
