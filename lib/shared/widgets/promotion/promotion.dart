import 'package:flutter/material.dart';

import 'promo_item.dart';

class Promotion extends StatelessWidget {
  const Promotion({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        PromoItem(
          imageUrl: "assets/images/promo1_banner.png",
          title: 'Makin Seru',
          subTitle: 'Aktifkan & Sambungkan GoPay & GoPayLater di Tokopedia',
        ),
        PromoItem(
          imageUrl: "assets/images/promo2_banner.png",
          title: 'Makin Seru',
          subTitle: 'Sambungin Akun ke Tokopedia, Banyakin Untung',
        ),
        PromoItem(
          imageUrl: "assets/images/promo3_banner.png",
          title: 'Makin Seru',
          subTitle: 'Promo Belanja Online 10.10: Cashback hingga Rp100.000',
        ),
      ],
    );
  }
}
