import 'package:flutter/material.dart';
import 'package:nl_pay_flow/shared/themes/app_colors.dart';

class BoletoInfoWidget extends StatelessWidget {
  final int size;
  const BoletoInfoWidget({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: AppColors.body),
    );
  }
}
