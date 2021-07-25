import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nl_pay_flow/shared/themes/app_colors.dart';
import 'package:nl_pay_flow/shared/themes/app_text_style.dart';
import 'package:nl_pay_flow/shared/widgets/input_text/input_text_widget.dart';

class InsertBoletoPage extends StatelessWidget {
  const InsertBoletoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        leading: BackButton(color: AppColors.input),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 93, vertical: 24),
            child: Text(
              'Preencha os dados do Boleto',
              style: AppTextStyles.titleBoldHeading,
              textAlign: TextAlign.center,
            ),
          ),
          InputTextWidget(
            label: "Nome do Boleto",
            icon: Icons.description_outlined,
          ),
          InputTextWidget(
            label: "Vencimento",
            icon: FontAwesomeIcons.timesCircle,
          ),
          InputTextWidget(
            label: "Valor",
            icon: FontAwesomeIcons.wallet,
          ),
          InputTextWidget(
            label: "Código",
            icon: FontAwesomeIcons.barcode,
          ),
        ],
      ),
    );
  }
}
