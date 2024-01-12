import 'package:flutter/material.dart';
import 'package:gojek_app/core.dart';
import '../view/login_view.dart';

class LoginController extends State<LoginView> {
  static late LoginController instance;
  late LoginView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  int currentIndex = 0;

  onChanged(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  List<Map> welcomeCards = [
    {
      "image": "assets/images/login_1.jpeg",
      "title": "Selamat datang di Gojek!",
      "subtitle":
          "Aplikasi yang buat hidumpu lebih nyaman. Siap bantu kebutuhanmu, kapan pun, di mana pun.",
    },
    {
      "image": "assets/images/login_2.jpeg",
      "title": "Transportasi & logistik",
      "subtitle":
          "Anterin kamu jalan atau ambilin barang lebih gampang tinggal ngeklik doang~",
    },
    {
      "image": "assets/images/login_3.jpeg",
      "title": "Pesan makan & belanja",
      "subtitle": "Lagi ngidam sesuatu? Gojek beliin gak pake lama.",
    },
    {
      "image": "assets/images/login_4.jpeg",
      "title": "Pembayaran",
      "subtitle":
          "Bisa beli pulsa, bayar tagihan listrik atau air, dan juga transfer sana sini.",
    },
    {
      "image": "assets/images/login_5.jpeg",
      "title": "Berita & hiburan",
      "subtitle":
          "Dari baca berita, main game, sampai nonton serial kesukaan. Ada semuanya~",
    },
    {
      "image": "assets/images/login_6.jpeg",
      "title": "Jasa profesional",
      "subtitle":
          "Konsultasi dokter asli dan beli obat tanpa harus keluar rumah.",
    },
  ];
}
