<<<<<<< HEAD
import 'dk_dn/dangky.dart';
=======
import 'package:app_doan/Splash_Screen/splash.dart';
import 'package:app_doan/trang_chu/trangchu.dart';

import 'package:app_doan/dk_dn/dangky.dart';
>>>>>>> a0c95ea38485fff6f8d0bfbeb6703660ddaec334
import 'package:flutter/material.dart';
import 'dk_dn/dangnhap.dart';
import 'sanpham/sanpham.dart';

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
      routes: {
        '/dangnhap': (context) => const DangNhap(),
        '/dangky': (context) => const DangKy(),
<<<<<<< HEAD
        //'/home': (context) => const HomeScreen(),
        '/danhsachsanpham': (context) => const DanhSachSanPham(),
      },
      initialRoute: '/danhsachsanpham',
=======
        // '/trangchu': (context) => HomeScreen(),
        '/splash':(context)=>const Splash(),
      },
      initialRoute: '/splash',
>>>>>>> a0c95ea38485fff6f8d0bfbeb6703660ddaec334
    );
  }
}
