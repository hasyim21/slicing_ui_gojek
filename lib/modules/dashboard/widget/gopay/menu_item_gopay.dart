import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gojek_app/shared/theme/fonts.dart';

import '../../../../shared/theme/colors.dart';

class MenuItemGopay extends StatelessWidget {
  const MenuItemGopay({
    super.key,
    required this.icon,
    required this.label,
  });

  final SvgPicture icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Material(
            color: whiteColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(8),
            ),
            child: InkWell(
              borderRadius: const BorderRadius.all(
                Radius.circular(8),
              ),
              onTap: () {},
              child: SizedBox(
                height: 24,
                width: 24,
                child: icon,
              ),
            ),
          ),
          const SizedBox(
            height: 7.0,
          ),
          Text(label,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: whiteTextStyle.copyWith(
                fontWeight: semiBold,
              )),
        ],
      ),
    );
  }
}
