import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../shared/theme/colors.dart';
import '../../../../shared/theme/fonts.dart';

class LanguageButton extends StatelessWidget {
  const LanguageButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: whiteColor,
      borderRadius: const BorderRadius.all(
        Radius.circular(35.0),
      ),
      child: InkWell(
        borderRadius: const BorderRadius.all(
          Radius.circular(35.0),
        ),
        onTap: () {},
        child: Container(
          height: 36,
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            border: Border.all(
              color: greyColor,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(35.0),
            ),
          ),
          child: Row(
            children: [
              Icon(
                MdiIcons.translate,
                size: 18.0,
              ),
              const SizedBox(
                width: 8.0,
              ),
              Text(
                "Bahasa Indonesia",
                style: greyTextStyle.copyWith(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
