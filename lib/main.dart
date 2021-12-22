import 'dk_dn/dangky.dart';
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
        //'/home': (context) => const HomeScreen(),
        '/danhsachsanpham': (context) => const DanhSachSanPham(),
      },
      initialRoute: '/danhsachsanpham',
    );
  }
}
