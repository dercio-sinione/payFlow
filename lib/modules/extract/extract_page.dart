import 'package:flutter/material.dart';

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
          Stack(
            children: [
              Container(
                color: AppColors.primary,
                height: 40,
                width: double.maxFinite,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: ValueListenableBuilder<List<BoletoModel>>(
                  valueListenable: controller.boletosNotifier,
                  builder: (_, boletos, __) =>
                      BoletoInfoWidget(size: boletos.length),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
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
