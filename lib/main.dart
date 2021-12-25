import 'package:app_doan/Splash_Screen/splash.dart';
import 'package:app_doan/dk_dn/dangky.dart';
import 'package:app_doan/thanhtoan/giohang.dart';
import 'package:app_doan/yeuthich/yeuthich.dart';
import 'package:flutter/material.dart';
import 'dk_dn/dangnhap.dart';
import 'sanpham/sanpham.dart';
import 'thanhtoan/thanhtoan.dart';
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
        // '/trangchu': (context) => HomeScreen(),
        '/splash': (context) => const Splash(),
        '/danhsachsanpham': (context) => const DanhSachSanPham(),
        '/monanyeuthich': (context) => const MonAnYeuThich(),
        '/giohang': (context) => const GioHang(),
        '/thanhtoan': (context) => const ThanhToan(),
      },
      initialRoute: '/giohang',
    );
  }
}
