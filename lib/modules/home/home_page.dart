import 'package:flutter/material.dart';

import 'package:nl_pay_flow/modules/extract/extract_page.dart';
import 'package:nl_pay_flow/modules/home/home_controller.dart';
import 'package:nl_pay_flow/modules/meus_boletos/meus_boletos_page.dart';
import 'package:nl_pay_flow/shared/models/users.dart';
import 'package:nl_pay_flow/shared/routes/routes_config.dart';
import 'package:nl_pay_flow/shared/themes/app_colors.dart';
import 'package:nl_pay_flow/shared/themes/app_images.dart';
import 'package:nl_pay_flow/shared/themes/app_text_style.dart';

class HomePage extends StatefulWidget {
  final User user;
  const HomePage({Key? key, required this.user}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homeController = HomeController();
  final pages = [
    MeusBoletosPage(),
    ExtractPagePage(),
  ];

  @override
  Widget build(BuildContext context) {
    void fnChangePage(int index) {
      setState(() {});
      homeController.setPage(index);
    }

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
                          text: "${widget.user.username}",
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
                  image: DecorationImage(
                    // image: NetworkImage(widget.user.photoURL!),
                    // image: ExactAssetImage(AppImages.person),
                    image: AssetImage(AppImages.person),
                  ),
                ),
              ),
            ),
          ),
        ),
        preferredSize: Size.fromHeight(152),
      ),
      body: pages[homeController.currentPage],
      bottomNavigationBar: Container(
        height: 90,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () => fnChangePage(0),
              icon: Icon(Icons.home),
              color: homeController.currentPage == 0
                  ? AppColors.primary
                  : AppColors.body,
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, AppRoutes.insertBoleto),
              child: Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(5)),
                child: Icon(
                  Icons.add_box_outlined,
                  color: AppColors.background,
                ),
              ),
            ),
            IconButton(
              onPressed: () => fnChangePage(1),
              icon: Icon(Icons.description_outlined),
              color: homeController.currentPage == 1
                  ? AppColors.primary
                  : AppColors.body,
            ),
          ],
        ),
      ),
    );
  }
}
