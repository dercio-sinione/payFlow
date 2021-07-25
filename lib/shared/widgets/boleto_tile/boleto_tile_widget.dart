import 'package:flutter/material.dart';
import 'package:nl_pay_flow/shared/models/boleto.dart';

class BoletoTileWidget extends StatelessWidget {
  final BoletoModel data;
  const BoletoTileWidget({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(""),
    );
  }
}
