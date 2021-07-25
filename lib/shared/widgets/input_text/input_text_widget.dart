import 'package:flutter/material.dart';
import 'package:nl_pay_flow/shared/themes/app_colors.dart';
import 'package:nl_pay_flow/shared/themes/app_text_style.dart';

class InputTextWidget extends StatelessWidget {
  const InputTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          style: AppTextStyles.input,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.zero,
            labelText: "Nome do Boleto",
            labelStyle: AppTextStyles.input,
            border: InputBorder.none,
            icon: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Icon(
                    Icons.file_copy,
                    color: AppColors.primary,
                  ),
                ),
                Container(width: 1, height: 46, color: AppColors.stroke),
              ],
            ),
          ),
        ),
        Divider(
          height: 1,
          thickness: 1,
          color: AppColors.stroke,
        )
      ],
    );
  }
}
