import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../shared/theme/colors.dart';
import '../../../../shared/theme/fonts.dart';

class Search extends StatelessWidget {
  const Search({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 40.0,
        padding: const EdgeInsets.symmetric(
          vertical: 7.0,
          horizontal: 10.0,
        ),
        decoration: BoxDecoration(
          color: lightGreyColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(30.0),
          ),
          border: Border.all(
            width: 1.0,
            color: mediumGreyColor,
          ),
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              "assets/icons/search_icon.svg",
              // height: 25.0,
              // ignore: deprecated_member_use
              color: blackColor,
            ),
            Expanded(
              child: TextFormField(
                initialValue: null,
                decoration: InputDecoration.collapsed(
                  filled: true,
                  fillColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  hintText: "Cari layanan, makanan, & tujuan",
                  hintStyle: lightGreyTextStyle,
                ),
                onFieldSubmitted: (value) {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
