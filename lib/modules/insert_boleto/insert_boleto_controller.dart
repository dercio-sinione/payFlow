import 'dart:ffi';

import 'package:flutter/widgets.dart';

class InsertBoletoController {
  final formKey = GlobalKey<FormState>();

  String? validateName(String? value) =>
      value?.isEmpty ?? true ? "O nome não pode ser vazio" : null;

  String? validateVencimento(String? value) =>
      value?.isEmpty ?? true ? "A data de vencimento não pode ser vazio" : null;

  String? validateValor(double? value) =>
      value == 0 ? "Insira um valor maior que 0,00 AOA" : null;

  String? validateCodigo(String? value) =>
      value?.isEmpty ?? true ? "O código de barra não pode ser vazio" : null;

  void onChange(
      {String? name, String? dueDate, Double? value, String? barcode}) {}

  void CadastrarBoleto() {
    final form = formKey.currentState;
    if (form!.validate()) {
      print("Formulario valido");
      print(form.context);
    }
  }
}
