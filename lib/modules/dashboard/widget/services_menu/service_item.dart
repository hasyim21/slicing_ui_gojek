import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gojek_app/shared/theme/fonts.dart';

class SericeItem extends StatelessWidget {
  const SericeItem({
    super.key,
    required this.icon,
    required this.label,
    required this.backgroundColor,
  });

  final SvgPicture icon;
  final String label;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Material(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(20.0),
            child: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(20.0),
              child: SizedBox(
                height: 40.0,
                width: 40.0,
                child: icon,
              ),
            ),
          ),
          const SizedBox(
            height: 9.0,
          ),
          Text(
            label,
            style: greyTextStyle.copyWith(fontSize: 12.5),
          ),
        ],
      ),
    );
  }
}
