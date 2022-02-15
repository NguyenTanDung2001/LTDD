import 'package:app_doan/constants.dart';
import 'package:app_doan/sanpham/sanphamBun.dart';
import 'package:app_doan/routes.dart';
import 'package:app_doan/trang_chu/trangchu.dart';
import 'package:app_doan/Splash_Screen/splash.dart';
import 'package:app_doan/dk_dn/dangky.dart';
import 'package:app_doan/thanhtoan/giohang.dart';
import 'package:app_doan/yeuthich/yeuthich.dart';
import 'package:flutter/material.dart';
import 'dk_dn/dangnhap.dart';
import 'package:app_doan/taikhoan/taikhoan.dart';
import 'sanpham/danhsachsanphamGioHang.dart';
import 'thanhtoan/thanhtoan.dart';
import 'yeuthich/sanphamyeuthich.dart';
import '../sanpham/chitietsanpham.dart';
import '../sanpham/sanphamthanhtoan.dart';
//import '../sanpham/sanpham.dart';
import 'taikhoan/account/account.dart';
import 'templateSearch.dart';
import 'package:provider/provider.dart';
//
import 'package:app_doan/repository/api.dart';
import 'package:app_doan/models/modelSanPham.dart';
import 'package:app_doan/provider/providerSanPham.dart';

import 'package:app_doan/taikhoan/account/formthongtin.dart';
//0306191323_PhamAnhKhoa

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [ChangeNotifierProvider(create: (_) => providerSanPham())],
        child: MaterialApp(
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
            '/sanphamBun': (context) => const DanhSachSanPhamBun(),
            '/taikhoan': (context) => const taikhoan(),
            '/chitietsanpham': (context) => const ChiTietSanPham(),
            '/danhsachmonanthanhtoan': (context) =>
                const DachSachMonAnThanhToan(),
            '/chinhsuatk': (context) => const chinhsuatk(),
            '/timkiem': (context) => HomePage(),
            '/chinhsuatk2': (context) => chinhsuatk2(),
          },
          initialRoute: '/splash',
          //routes: routes,
        ));
  }
}
