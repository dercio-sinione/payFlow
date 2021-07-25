import 'package:flutter/material.dart';
import 'package:nl_pay_flow/shared/themes/app_colors.dart';
import 'package:nl_pay_flow/shared/themes/app_text_style.dart';
import 'package:nl_pay_flow/shared/widgets/boleto_info/boleto_info_widget.dart';
import 'package:nl_pay_flow/shared/widgets/boleto_list/boleto_list_widget.dart';

class MeusBoletosPage extends StatefulWidget {
  const MeusBoletosPage({Key? key}) : super(key: key);

  @override
  _MeusBoletosPageState createState() => _MeusBoletosPageState();
}

class _MeusBoletosPageState extends State<MeusBoletosPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          BoletoInfoWidget(size: 14),
          Padding(
            padding: const EdgeInsets.only(top: 24),
            child: Row(
              children: [
                Text(
                  "Meus boletos",
                  style: AppTextStyles.titleBoldHeading,
                  // textAlign: TextAlign.start,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18),
            child: Divider(
              color: AppColors.stroke,
              thickness: 1,
              height: 1,
            ),
          ),
          BoletoListWidget(),
        ],
      ),
    );
  }
}
