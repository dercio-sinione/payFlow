import 'package:flutter/material.dart';
import 'package:nl_pay_flow/shared/themes/app_colors.dart';
import 'package:nl_pay_flow/shared/themes/app_text_style.dart';
import 'package:nl_pay_flow/shared/widgets/boleto_list/boleto_list_controller.dart';
import 'package:nl_pay_flow/shared/widgets/boleto_list/boleto_list_widget.dart';

class ExtractPagePage extends StatefulWidget {
  const ExtractPagePage({Key? key}) : super(key: key);

  @override
  _ExtractPagePageState createState() => _ExtractPagePageState();
}

class _ExtractPagePageState extends State<ExtractPagePage> {
  final controller = BoletoListController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
            child: Row(
              children: [
                Text(
                  "Meu Extrato",
                  style: AppTextStyles.titleBoldHeading,
                  // textAlign: TextAlign.start,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Divider(
              color: AppColors.stroke,
              thickness: 1,
              height: 1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: BoletoListWidget(controller: controller),
          ),
        ],
      ),
    );
  }
}
