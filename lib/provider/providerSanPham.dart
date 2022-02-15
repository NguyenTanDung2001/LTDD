import 'package:flutter/material.dart';
import 'package:app_doan/models/modelSanPham.dart';
import 'package:app_doan/repository/api.dart';

class providerSanPham with ChangeNotifier {
  List<modelSanPham> sanphams = [];
  bool loading = false;
  getSanPham(context) async {
    loading = true;
    sanphams = await getAllSanPham(context);
    loading = false;

    notifyListeners();
  }
}
