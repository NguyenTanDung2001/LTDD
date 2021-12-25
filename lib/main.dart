import 'package:app_doan/constants.dart';
import 'package:app_doan/trang_chu/trangchu.dart';

import 'package:app_doan/dk_dn/dangky.dart';
import 'package:flutter/material.dart';
import 'dk_dn/dangnhap.dart';
import 'trang_chu/trangchu.dart';
//0306191323_PhamAnhKhoa

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: Colors.white,
          textTheme:TextTheme(
            bodyText1: TextStyle(color: ksecondaryColor),
            bodyText2:TextStyle(color: ksecondaryColor), 
          )),
         routes: {
        '/dangnhap': (context) => const DangNhap(),
        '/dangky': (context) => const DangKy(),
        '/trangchu': (context) => HomeScreen(),
      },
      initialRoute: '/trangchu',
    );
  }
}
