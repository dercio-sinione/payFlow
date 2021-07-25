class InsertBoletoController {
  String? validateName(String? value) =>
      value?.isEmpty ?? true ? "O nome não pode ser vazio" : null;

  String? validateVencimento(String? value) =>
      value?.isEmpty ?? true ? "A data de vencimento não pode ser vazio" : null;

  String? validateValor(String? value) =>
      value == 0 ? "Insira um valor maior que 0,00 AOA" : null;

  String? validateCodigo(String? value) =>
      value?.isEmpty ?? true ? "O código de barra não pode ser vazio" : null;
}
