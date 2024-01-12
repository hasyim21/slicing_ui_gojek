import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core.dart';

class MainNavigationView extends StatefulWidget {
  const MainNavigationView({Key? key}) : super(key: key);

  Widget build(context, MainNavigationController controller) {
    controller.view = this;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Column(
          children: [
            Container(
              color: greenColor,
              child: SafeArea(
                child: Container(
                  height: 50,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 15.0,
                    vertical: 10.5,
                  ),
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                    color: darkGreenColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  child: TabBar(
                    indicatorPadding: EdgeInsets.zero,
                    tabs: [
                      Tab(
                        child: Text(
                          'Beranda',
                          style: GoogleFonts.lato(fontWeight: semiBold),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Promo',
                          style: GoogleFonts.lato(fontWeight: semiBold),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Pesanan',
                          style: GoogleFonts.lato(fontWeight: semiBold),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Chat',
                          style: GoogleFonts.lato(fontWeight: semiBold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  DashboardView(),
                  PromotionView(),
                  Icon(Icons.shopping_bag),
                  Icon(Icons.chat),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<MainNavigationView> createState() => MainNavigationController();
}
