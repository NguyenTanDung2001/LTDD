import 'package:flutter/material.dart';
import 'package:app_doan/models/modelKhachHang.dart';
import 'package:app_doan/repository/api.dart';

class providerDangNhap with ChangeNotifier {
  modelKhachHang khachhangs = modelKhachHang();
  bool loading = false;
  dangnhap(email, matkhau) async {
    loading = true;
    khachhangs = await dangnhapkh(email, matkhau);
    loading = false;
    notifyListeners();
  }
}
