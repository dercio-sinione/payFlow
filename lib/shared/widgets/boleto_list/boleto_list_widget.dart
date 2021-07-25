import 'package:flutter/material.dart';
import 'package:nl_pay_flow/shared/models/boleto.dart';
import 'package:nl_pay_flow/shared/widgets/boleto_tile/boleto_tile_widget.dart';

class BoletoListWidget extends StatefulWidget {
  const BoletoListWidget({Key? key}) : super(key: key);

  @override
  _BoletoListWidgetState createState() => _BoletoListWidgetState();
}

class _BoletoListWidgetState extends State<BoletoListWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BoletoTileWidget(
          data: BoletoModel(
              name: "Dercio",
              dueDate: "12/04/2021",
              value: 15000,
              barcode: "5678"),
        ),
      ],
    );
  }
}
