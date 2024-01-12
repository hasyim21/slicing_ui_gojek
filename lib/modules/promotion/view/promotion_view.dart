import 'package:flutter/material.dart';
import 'package:gojek_app/core.dart';

class PromotionView extends StatefulWidget {
  const PromotionView({Key? key}) : super(key: key);

  Widget build(context, PromotionController controller) {
    controller.view = this;

    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 23, horizontal: 15),
        children: const [
          Promotion(),
        ],
      ),
    );
  }

  @override
  State<PromotionView> createState() => PromotionController();
}
