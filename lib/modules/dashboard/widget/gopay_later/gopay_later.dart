import 'package:flutter/material.dart';

import '../../../../shared/theme/fonts.dart';

class GoPayLater extends StatelessWidget {
  const GoPayLater({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          "assets/images/gopaylater_logo.png",
          width: 98.0,
        ),
        const SizedBox(
          height: 8.0,
        ),
        Text(
          "Lebih hemat pake GoPayLater",
          style: blackTextStyle.copyWith(fontSize: 16, fontWeight: bold),
        ),
        const SizedBox(
          height: 8.0,
        ),
        Text(
          "Yuk, belanja di Tokopedia pake GoPay Later dan nikmatin cashback-nya~",
          style: greyTextStyle,
        ),
      ],
    );
  }
}
