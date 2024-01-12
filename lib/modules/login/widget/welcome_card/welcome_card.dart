import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../../../../core.dart';

class WelcomeCard extends StatelessWidget {
  const WelcomeCard({super.key, required this.controller});

  final LoginController controller;

  @override
  Widget build(BuildContext context) {
    // var controller = LoginController.instance;
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 330.0,
            viewportFraction: 1.0,
            autoPlay: true,
            disableCenter: true,
            enableInfiniteScroll: false,
            padEnds: false,
            initialPage: 0,
            onPageChanged: (index, reason) => controller.onChanged(index),
          ),
          items: controller.welcomeCards.map((item) {
            return Builder(
              builder: (BuildContext context) {
                return Column(
                  children: [
                    Image.asset(
                      item["image"],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      item["title"],
                      style: blackTextStyle.copyWith(
                        fontSize: 22,
                        fontWeight: bold,
                      ),
                    ),
                    const SizedBox(
                      height: 6.0,
                    ),
                    Text(
                      item["subtitle"],
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                );
              },
            );
          }).toList(),
        ),
        const SizedBox(
          height: 50.0,
        ),
        DotsIndicator(
          dotsCount: controller.welcomeCards.length,
          position: controller.currentIndex,
          decorator: const DotsDecorator(
            color: mediumGreyColor,
            activeColor: greenColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(6.0),
              ),
            ),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(6.0),
              ),
            ),
            size: Size(6.0, 6.0),
            activeSize: Size(6.0, 6.0),
            spacing: EdgeInsets.symmetric(horizontal: 4.0),
          ),
        ),
        const SizedBox(
          height: 12.0,
        ),
      ],
    );
  }
}
