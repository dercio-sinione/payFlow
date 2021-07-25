import 'package:flutter/widgets.dart';
import 'package:nl_pay_flow/shared/models/boleto.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InsertBoletoController {
  final formKey = GlobalKey<FormState>();
  BoletoModel model = BoletoModel();

  String? validateName(String? value) =>
      value?.isEmpty ?? true ? "O nome não pode ser vazio" : null;

  String? validateVencimento(String? value) =>
      value?.isEmpty ?? true ? "A data de vencimento não pode ser vazio" : null;

  String? validateValor(double? value) =>
      value == 0 ? "Insira um valor maior que 0,00 AOA" : null;

  String? validateCodigo(String? value) =>
      value?.isEmpty ?? true ? "O código de barra não pode ser vazio" : null;

  void onChange({
    String? name,
    String? dueDate,
    double? value,
    String? barcode,
  }) {
    model = model.copyWith(
      name: name,
      dueDate: dueDate,
      value: value,
      barcode: barcode,
    );
  }

  Future<void> saveBoleto() async {
    try {
      final instance = await SharedPreferences.getInstance();
      final boletos = instance.getStringList("boletos") ?? <String>[];
      boletos.add(model.toJson());
      await instance.setStringList("boletos", boletos);
      return;
    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> cadastrarBoleto() async {
    final form = formKey.currentState;
    if (form!.validate()) {
      print(model);
      return saveBoleto();
    }
  }
}
