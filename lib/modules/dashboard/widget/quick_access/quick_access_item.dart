import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gojek_app/shared/theme/fonts.dart';

import '../../../../shared/theme/colors.dart';

class QuickAccessItem extends StatelessWidget {
  const QuickAccessItem({
    super.key,
    required this.icon,
    required this.title,
    required this.color,
  });

  final SvgPicture icon;
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: const BorderRadius.all(
        Radius.circular(15.0),
      ),
      onTap: () {},
      child: SizedBox(
        height: 55,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 12,
                backgroundColor: color,
                child: icon,
              ),
              const SizedBox(
                width: 12.0,
              ),
              Text(
                title,
                style: greyTextStyle,
              ),
              const Spacer(),
              SvgPicture.asset(
                'assets/icons/left_icon.svg',
                // ignore: deprecated_member_use
                color: blackColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
