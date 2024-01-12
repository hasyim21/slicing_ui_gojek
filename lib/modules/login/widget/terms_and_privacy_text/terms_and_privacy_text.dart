import 'package:flutter/material.dart';

import '../../../../shared/theme/colors.dart';
import '../../../../shared/theme/fonts.dart';

class TermsAndPrivacyText extends StatelessWidget {
  const TermsAndPrivacyText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: blackTextStyle.copyWith(fontSize: 14.0),
        children: const [
          TextSpan(text: "Dengan masuk atau mendaftar, kamu menyetujui "),
          TextSpan(
            text: "Ketentuan layanan",
            style: TextStyle(
              fontSize: 14.0,
              color: greenColor,
            ),
          ),
          TextSpan(text: " dan "),
          TextSpan(
            text: "Kebijakan privasi",
            style: TextStyle(
              fontSize: 14.0,
              color: greenColor,
            ),
          ),
          TextSpan(text: "."),
        ],
      ),
    );
  }
}
