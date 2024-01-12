import 'package:flutter/material.dart';
import 'package:gojek_app/shared/theme/colors.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: const BorderRadius.all(
        Radius.circular(20.0),
      ),
      child: Ink(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: greenColor,
        ),
        child: const CircleAvatar(
          radius: 20,
          backgroundColor: Colors.transparent,
          child: Icon(
            Icons.person,
            color: whiteColor,
          ),
        ),
      ),
    );
  }
}
