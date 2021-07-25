import 'package:flutter/material.dart';
import 'package:nl_pay_flow/shared/models/boleto.dart';
import 'package:nl_pay_flow/shared/themes/app_text_style.dart';

class BoletoTileWidget extends StatelessWidget {
  final BoletoModel data;
  const BoletoTileWidget({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // contentPadding: EdgeInsets.zero,
      title: Text(data.name!, style: AppTextStyles.titleListTile),
      subtitle:
          Text("Vence em ${data.dueDate}", style: AppTextStyles.captionBody),
      trailing: Text.rich(TextSpan(
          text: "${data.value!.toStringAsFixed(2)}",
          style: AppTextStyles.trailingBold,
          children: [
            TextSpan(text: " AOA", style: AppTextStyles.trailingRegular),
          ])),
    );
  }
}
