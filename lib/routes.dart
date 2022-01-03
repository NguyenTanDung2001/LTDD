import 'dart:js';

import 'package:app_doan/thanhtoan/giohang.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:app_doan/main.dart';
import 'package:app_doan/Splash_Screen/splash.dart';
import 'package:app_doan/dk_dn/dangnhap.dart';
import 'package:app_doan/dk_dn/dangky.dart';
import 'package:app_doan/trang_chu/trangchu.dart';
import 'package:app_doan/yeuthich/yeuthich.dart';
import 'package:app_doan/thanhtoan/thanhtoan.dart';
import 'package:app_doan/taikhoan/taikhoan.dart';

final Map<String, WidgetBuilder> routes = {
  Splash.routeName: (context) => Splash(),
  DangNhap.routeName: (context) => DangNhap(),
  DangKy.routeName: (context) => DangKy(),
  HomeScreen.routeName: (context) => HomeScreen(),
  MonAnYeuThich.routeName: (context) => MonAnYeuThich(),
  ThanhToan.routeName: (context) => ThanhToan(),
  taikhoan.routeName: (context) => taikhoan(),
};
