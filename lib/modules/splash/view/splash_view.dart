import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';

import '../../../core.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  Widget build(context, SplashController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(backgroundColor: whiteColor),
      extendBodyBehindAppBar: true,
      body: EasySplashScreen(
        logo: Image.asset("assets/images/gojek_logo.png"),
        logoWidth: 80,
        backgroundColor: whiteColor,
        showLoader: false,
        navigator: const LoginView(),
        durationInSeconds: 1,
      ),
    );
  }

  @override
  State<SplashView> createState() => SplashController();
}
