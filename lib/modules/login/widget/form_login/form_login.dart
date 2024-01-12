import 'package:flutter/material.dart';

import '../../../../shared/theme/colors.dart';
import '../../../../shared/theme/fonts.dart';
import '../../../main_navigation/view/main_navigation_view.dart';
import '../forgot_number/forgot_number.dart';
import '../login_button/login_button.dart';
import '../phone_number/phone_number.dart';

class FormLogin extends StatelessWidget {
  const FormLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 48.0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_rounded,
          ),
        ),
        backgroundColor: whiteColor,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.help,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Masukkan nomor HP",
              style: blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: bold,
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Text(
              "Buat masuk ke akunmu atau daftar kalau kamu baru di Gojek",
              style: blackTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            const PhoneNumber(),
            const SizedBox(
              height: 20.0,
            ),
            const ForgotNumber(),
            const Spacer(),
            LoginButton(
              label: "Lanjut",
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const MainNavigationView(),
                //   ),
                // );
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) =>
                          const MainNavigationView(),
                    ),
                    (route) => false);
              },
            ),
          ],
        ),
      ),
    );
  }
}
