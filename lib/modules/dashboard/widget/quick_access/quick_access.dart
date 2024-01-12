import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gojek_app/shared/theme/colors.dart';
import 'package:gojek_app/shared/theme/fonts.dart';

import 'quick_access_item.dart';

class QuickAccess extends StatelessWidget {
  const QuickAccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Akses cepat',
          style: blackTextStyle.copyWith(
            fontSize: 18,
            fontWeight: bold,
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: mediumGreyColor,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
          child: Column(
            children: [
              QuickAccessItem(
                color: greenColor,
                icon: SvgPicture.asset('assets/icons/goride_icon.svg'),
                title: "Pintu masuk motor MNC Land",
              ),
              QuickAccessItem(
                color: redColor,
                icon: SvgPicture.asset('assets/icons/gofood_icon.svg'),
                title: "Restoran terdekat",
              ),
            ],
          ),
        ),
      ],
    );
  }
}
