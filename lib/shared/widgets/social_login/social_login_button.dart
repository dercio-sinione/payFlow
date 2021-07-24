import 'package:flutter/material.dart';
import 'package:nl_pay_flow/shared/themes/app_colors.dart';
import 'package:nl_pay_flow/shared/themes/app_images.dart';
import 'package:nl_pay_flow/shared/themes/app_text_style.dart';

class SocialLoginButton extends StatelessWidget {
  final VoidCallback onTape;
  const SocialLoginButton({Key? key, required this.onTape}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTape,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.shape,
          borderRadius: BorderRadius.circular(5),
          border: Border.fromBorderSide(BorderSide(color: AppColors.stroke)),
        ),
        height: 56,
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AppImages.google),
                    SizedBox(width: 12),
                    Container(
                      height: 56,
                      width: 1,
                      color: AppColors.stroke,
                    )
                  ],
                )),
            Expanded(
              flex: 4,
              child: Text(
                "Entrar com Google",
                style: AppTextStyles.buttonGray,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
