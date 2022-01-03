import 'package:flutter/material.dart';
import 'package:app_doan/taikhoan/screen/app_bar.dart';
import 'package:app_doan/bottom_nav_bar.dart';
import 'package:app_doan/taikhoan/screen/body.dart';

class taikhoan extends StatelessWidget {
  const taikhoan({Key? key}) : super(key: key);
  static String routeName = "/taikhoan";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Tài Khoản',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: homeAppBar(context),
          bottomNavigationBar: const BottomAppBar(),
          body: body(),
        ));
  }
}
