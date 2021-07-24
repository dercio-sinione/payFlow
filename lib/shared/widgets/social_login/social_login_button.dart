import 'package:flutter/material.dart';
import 'package:nl_pay_flow/shared/themes/app_images.dart';
import 'package:nl_pay_flow/shared/themes/app_text_style.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Image.asset(AppImages.google),
          Text(
            "Entrar com Google",
            style: AppTextStyles.buttonGray,
          )
        ],
      ),
    );
  }
}
