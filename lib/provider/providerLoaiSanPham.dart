import 'package:flutter/material.dart';
import 'package:app_doan/models/modelLoaiSanPham.dart';
import 'package:app_doan/repository/api.dart';

class providerLoaiSanPham with ChangeNotifier {
  List<modelLoaiSanPham> loaisanphams = [];
  bool loading = false;
  getLoaiSanPham(context) async {
    loading = true;
    loaisanphams = await getAllLoaiSanPham(context);
    loading = false;

    notifyListeners();
  }
}
