import 'package:app_doan/constants.dart';
import 'package:app_doan/sanpham/sanpham.dart';
import 'package:app_doan/routes.dart';
import 'package:app_doan/trang_chu/trangchu.dart';
import 'package:app_doan/Splash_Screen/splash.dart';
import 'package:app_doan/dk_dn/dangky.dart';
import 'package:app_doan/thanhtoan/giohang.dart';
import 'package:app_doan/yeuthich/yeuthich.dart';
import 'package:flutter/material.dart';
import 'dk_dn/dangnhap.dart';
import 'package:app_doan/taikhoan/taikhoan.dart';
import 'sanpham/danhsachsanpham.dart';
import 'thanhtoan/thanhtoan.dart';
import 'yeuthich/sanphamyeuthich.dart';
import '../sanpham/chitietsanpham.dart';
import '../sanpham/sanphamthanhtoan.dart';
<<<<<<< HEAD
import '../sanpham/sanpham.dart';

=======
import 'package:app_doan/taikhoan/account/account.dart';
>>>>>>> c79964e7791d73a76bd887bb82f4e027cdb78306
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
          textTheme: const TextTheme(
            bodyText1: TextStyle(color: ksecondaryColor),
            bodyText2: TextStyle(color: ksecondaryColor),
          )),
      routes: {
        '/dangnhap': (context) => const DangNhap(),
        '/dangky': (context) => const DangKy(),
        '/trangchu': (context) => HomeScreen(),
        '/splash': (context) => const Splash(),
        '/danhsachsanpham': (context) => const DachSachMonAn(),
        '/monanyeuthich': (context) => const MonAnYeuThich(),
        '/giohang': (context) => const GioHang(),
        '/thanhtoan': (context) => const ThanhToan(),
        '/listyeuthich': (context) => const DachSachMonAnYeuThich(),
        '/taikhoan': (context) => const taikhoan(),
        '/chitietsanpham': (context) => const ChiTietSanPham(),
        '/danhsachmonanthanhtoan': (context) => const DachSachMonAnThanhToan(),

        '/sanpham': (context) => const DanhSachSanPham(),
      },

      initialRoute: Splash.routeName,
        '/chinhsuatk':(context)=> const chinhsuatk(),
      },
      initialRoute: '/splash',
      //routes: routes,
    );
  }
}
