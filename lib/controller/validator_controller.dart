import 'package:cpf_validator/model/cpf_model.dart';
import 'package:flutter/material.dart';

class ValidatorController {
  final textController = TextEditingController();
  final CpfModel meuCpf;
  ValidatorController(this.meuCpf);

  String _cpf = '';

  setCpf(String value) {
    _cpf = value;
  }

  String valid = '';

  String validate() {
    bool isValid = meuCpf.isValid(textController.text);

    if (isValid == true) {
      valid = '$_cpf válido';
    } else {
      valid = '$_cpf é inválido';
    }
    return valid;
  }
}
