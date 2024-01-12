import 'package:flutter/material.dart';

import '../../../core.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  Widget build(context, DashboardController controller) {
    controller.view = this;

    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 23, horizontal: 15),
        children: const [
          Row(
            children: [
              Search(),
              SizedBox(
                width: 15.0,
              ),
              ProfilePicture(),
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          GoPay(),
          SizedBox(
            height: 32.0,
          ),
          ServicesMenu(),
          SizedBox(
            height: 19.0,
          ),
          GoClub(),
          SizedBox(
            height: 16.0,
          ),
          QuickAccess(),
          SizedBox(
            height: 32.0,
          ),
          GoPayLater(),
          SizedBox(
            height: 24.0,
          ),
          Promotion(),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }

  @override
  State<DashboardView> createState() => DashboardController();
}
