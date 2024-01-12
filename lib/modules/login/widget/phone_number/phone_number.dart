import 'package:flutter/material.dart';

import '../../../../shared/theme/colors.dart';
import '../../../../shared/theme/fonts.dart';

class PhoneNumber extends StatelessWidget {
  const PhoneNumber({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              "Nomor HP",
              style: blackTextStyle.copyWith(
                fontSize: 12,
                fontWeight: bold,
              ),
            ),
            const SizedBox(
              width: 3.0,
            ),
            Text(
              "*",
              style: redTextStyle.copyWith(
                fontSize: 12,
                fontWeight: bold,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 8.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Material(
              color: lightGreyColor,
              borderRadius: const BorderRadius.all(
                Radius.circular(50.0),
              ),
              child: InkWell(
                borderRadius: const BorderRadius.all(
                  Radius.circular(50.0),
                ),
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 3.0,
                    horizontal: 8.0,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1.0,
                      color: mediumGreyColor,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(50.0),
                    ),
                  ),
                  child: Row(
                    children: [
                      const Text("🇮🇩"), // Emoji bendera Indonesia
                      const SizedBox(width: 5.0),
                      Text("+62",
                          style: blackTextStyle.copyWith(
                            fontWeight: bold,
                          )),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 12.0,
            ),
            Expanded(
              child: TextFormField(
                keyboardType: TextInputType.phone,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
