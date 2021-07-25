import 'package:nl_pay_flow/shared/models/boleto.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BoletoListController {
  
  List<BoletoModel> boletos = <BoletoModel>[];

  BoletoListController() {
    getBoletos();
  }

  Future<void> getBoletos() async {
    try {
      final instance = await SharedPreferences.getInstance();
      final response = instance.getStringList("boletos") ?? <String>[];
      boletos = response.map((e) => BoletoModel.fromJson(e)).toList();
    } catch (e) {
      boletos = <BoletoModel>[];
      print(e.toString());
    }
  }
}
