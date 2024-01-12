import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gojek_app/core.dart';

class GoClub extends StatelessWidget {
  const GoClub({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: const BorderRadius.all(
        Radius.circular(15.0),
      ),
      child: Container(
        height: 65,
        padding: const EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
          border: Border.all(
            color: mediumGreyColor,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(15.0),
          ),
        ),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Positioned(
              left: 8,
              child: Image.asset(
                'assets/images/dots.png',
                width: 120.0,
                fit: BoxFit.fill,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 16.0,
                ),
                SvgPicture.asset(
                  'assets/icons/star_icon.svg',
                  height: 40,
                ),
                const SizedBox(
                  width: 12.0,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '117 XP lagi ada Harta Karun',
                        style: blackTextStyle.copyWith(fontWeight: semiBold),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      const SizedBox(
                        width: 209,
                        child: LinearProgressIndicator(
                          backgroundColor: mediumGreyColor,
                          valueColor: AlwaysStoppedAnimation(greenColor),
                          value: 0.7,
                        ),
                      )
                    ],
                  ),
                ),
                // const Spacer(),
                SvgPicture.asset(
                  'assets/icons/left_icon.svg',
                  // ignore: deprecated_member_use
                  color: blackColor,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
