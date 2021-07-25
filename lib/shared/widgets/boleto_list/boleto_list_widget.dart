import 'package:flutter/material.dart';
import 'package:nl_pay_flow/shared/models/boleto.dart';
import 'package:nl_pay_flow/shared/widgets/boleto_list/boleto_list_controller.dart';
import 'package:nl_pay_flow/shared/widgets/boleto_tile/boleto_tile_widget.dart';

class BoletoListWidget extends StatefulWidget {
  const BoletoListWidget({Key? key}) : super(key: key);

  @override
  _BoletoListWidgetState createState() => _BoletoListWidgetState();
}

class _BoletoListWidgetState extends State<BoletoListWidget> {
  final controller = BoletoListController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children:
          controller.boletos.map((e) => BoletoTileWidget(data: e)).toList(),
    );
  }
}
