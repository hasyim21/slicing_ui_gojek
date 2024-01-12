import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core.dart';

class ServicesMenu extends StatelessWidget {
  const ServicesMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12.0),
      height: 157,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SericeItem(
                icon: SvgPicture.asset(
                  'assets/icons/goride_icon.svg',
                  // ignore: deprecated_member_use
                  color: whiteColor,
                ),
                label: 'GoRide',
                backgroundColor: greenColor,
              ),
              SericeItem(
                icon: SvgPicture.asset(
                  'assets/icons/gocar_icon.svg',
                  // ignore: deprecated_member_use
                  color: whiteColor,
                ),
                label: 'GoCar',
                backgroundColor: greenColor,
              ),
              SericeItem(
                icon: SvgPicture.asset(
                  'assets/icons/gofood_icon.svg',
                  // ignore: deprecated_member_use
                  color: whiteColor,
                ),
                label: 'GoFood',
                backgroundColor: redColor,
              ),
              SericeItem(
                icon: SvgPicture.asset(
                  'assets/icons/gosend_icon.svg',
                  // ignore: deprecated_member_use
                  color: whiteColor,
                ),
                label: 'GoSend',
                backgroundColor: greenColor,
              ),
            ],
          ),
          const SizedBox(
            height: 19.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SericeItem(
                icon: SvgPicture.asset(
                  'assets/icons/gomart_icon.svg',
                  // ignore: deprecated_member_use
                  color: whiteColor,
                ),
                label: 'GoMart',
                backgroundColor: redColor,
              ),
              SericeItem(
                icon: SvgPicture.asset(
                  'assets/icons/gopulsa_icon.svg',
                  // ignore: deprecated_member_use
                  color: whiteColor,
                ),
                label: 'GoPulsa',
                backgroundColor: lightBlueColor,
              ),
              SericeItem(
                icon: SvgPicture.asset(
                  'assets/icons/goclub_icon.svg',
                  // ignore: deprecated_member_use
                  color: purpleColor,
                ),
                label: 'GoClub',
                backgroundColor: whiteColor,
              ),
              SericeItem(
                icon: SvgPicture.asset(
                  'assets/icons/other_icon.svg',
                  // ignore: deprecated_member_use
                  color: darkGreyColor,
                ),
                label: 'Lainnya',
                backgroundColor: mediumGreyColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
