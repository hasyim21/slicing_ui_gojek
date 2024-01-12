import 'package:flutter/material.dart';

import '../../../../shared/theme/colors.dart';
import '../../../../shared/theme/fonts.dart';

class ForgotNumber extends StatelessWidget {
  const ForgotNumber({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: const BorderRadius.all(
        Radius.circular(12.0),
      ),
      child: Text(
        "Ada kendala atau lupa nomor?",
        style: greenTextStyle.copyWith(
          fontSize: 14,
          fontWeight: bold,
          color: darkGreenColor,
          decoration: TextDecoration.underline,
          decorationColor: darkGreenColor,
        ),
      ),
    );
  }
}
