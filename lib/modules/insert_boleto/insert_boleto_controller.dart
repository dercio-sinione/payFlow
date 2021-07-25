class InsertBoletoController {
  String? validateName(String? value) =>
      value?.isEmpty ?? true ? "O nome não pode ser vazio" : null;

  String? validateVencimento(String? value) =>
      value?.isEmpty ?? true ? "A data de vencimento não pode ser vazio" : null;
  
    String? validateValor(String? value) =>
      value==0 ? "Insira um valor a cima" : null;
}
