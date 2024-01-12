import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:gojek_app/shared/theme/colors.dart';
import 'package:gojek_app/shared/theme/fonts.dart';

class SaldoGopay extends StatefulWidget {
  const SaldoGopay({
    super.key,
  });

  @override
  State<SaldoGopay> createState() => _SaldoGopayState();
}

class _SaldoGopayState extends State<SaldoGopay> {
  int currentIndex = 0;

  List<String> listSaldo = [
    "1.000.000",
    "100.000",
    "10.000",
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DotsIndicator(
          dotsCount: listSaldo.length,
          position: currentIndex,
          axis: Axis.vertical,
          decorator: const DotsDecorator(
            color: Color(0xFFBBBBBB),
            activeColor: whiteColor,
            shape: Border(),
            activeShape: Border(),
            size: Size(2.0, 8.0),
            activeSize: Size(2.0, 8.0),
            spacing: EdgeInsets.all(5.0),
          ),
        ),
        SizedBox(
          height: 96,
          width: 135,
          child: CarouselSlider(
            options: CarouselOptions(
              scrollDirection: Axis.vertical,
              height: 68,
              enableInfiniteScroll: true,
              enlargeCenterPage: true,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
            items: listSaldo.map((item) {
              return Builder(
                builder: (BuildContext context) {
                  return Opacity(
                    opacity:
                        currentIndex == listSaldo.indexOf(item) ? 1.0 : 0.5,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/images/gopay_logo.png",
                            width: 57.0,
                            height: 14.0,
                            fit: BoxFit.fill,
                          ),
                          Text(
                            'Rp$item',
                            style: blackTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: bold,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            "Klik & cek riwayat",
                            style: greenTextStyle.copyWith(
                              fontSize: 12.5,
                              fontWeight: semiBold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
