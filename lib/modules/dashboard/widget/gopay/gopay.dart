import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../shared/theme/colors.dart';
import 'menu_item_gopay.dart';
import 'saldo_gopay.dart';

class GoPay extends StatelessWidget {
  const GoPay({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 96,
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      decoration: const BoxDecoration(
        color: darkBlueColor,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SaldoGopay(),
          const Spacer(),
          Row(
            children: [
              MenuItemGopay(
                icon: SvgPicture.asset(
                  'assets/icons/pay_icon.svg',
                  // ignore: deprecated_member_use
                  color: darkBlueColor,
                ),
                label: 'Bayar',
              ),
              const SizedBox(
                width: 17.0,
              ),
              MenuItemGopay(
                icon: SvgPicture.asset(
                  'assets/icons/topup_icon.svg',
                  // ignore: deprecated_member_use
                  color: darkBlueColor,
                ),
                label: 'Top Up',
              ),
              const SizedBox(
                width: 17.0,
              ),
              MenuItemGopay(
                icon: SvgPicture.asset(
                  'assets/icons/explore_icon.svg',
                  // ignore: deprecated_member_use
                  color: darkBlueColor,
                ),
                label: 'Eksplor',
              ),
            ],
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
