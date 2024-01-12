import 'package:flutter/material.dart';

import '../../../core.dart';
import '../widget/form_login/form_login.dart';
import '../widget/language_button/language_button.dart';
import '../widget/login_button/login_button.dart';
import '../widget/register_button/register_button.dart';
import '../widget/terms_and_privacy_text/terms_and_privacy_text.dart';
import '../widget/welcome_card/welcome_card.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  Widget build(context, LoginController controller) {
    controller.view = this;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/images/gojek_logo_row.png",
                    height: 23.0,
                  ),
                  const LanguageButton(),
                ],
              ),
              const Spacer(
                  // flex: 7,
                  ),
              WelcomeCard(
                controller: controller,
              ),
              const SizedBox(
                height: 12.0,
              ),
              LoginButton(
                label: "Masuk",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FormLogin(),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 14.0,
              ),
              const RegisterButton(),
              const SizedBox(
                height: 25.0,
              ),
              const TermsAndPrivacyText(),
              const SizedBox(
                height: 5.0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LoginView> createState() => LoginController();
}
