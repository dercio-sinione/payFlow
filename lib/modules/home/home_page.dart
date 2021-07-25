import 'package:flutter/material.dart';
import 'package:nl_pay_flow/shared/themes/app_colors.dart';
import 'package:nl_pay_flow/shared/themes/app_text_style.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: Container(
          height: 152,
          color: AppColors.primary,
          child: Center(
            child: ListTile(
              title: Text.rich(
                TextSpan(
                    text: "Olá, ",
                    style: AppTextStyles.titleRegular,
                    children: [
                      TextSpan(
                          text: "Dércio",
                          style: AppTextStyles.titleBoldBackground),
                    ]),
              ),
              subtitle: Text("Mantenha as suas contas em dia.",
                  style: AppTextStyles.captionShape),
              trailing: Container(
                width: 48,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          ),
        ),
        preferredSize: Size.fromHeight(152),
      ),
      bottomNavigationBar: Container(
        height: 90,
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.home),
              color: AppColors.primary,
            ),
            Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                color: AppColors.primary,
              ),
              child: Icon(Icons.add_box_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.add_box_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.description_outlined),
              color: AppColors.body,
            ),
          ],
        ),
      ),
    );
  }
}
