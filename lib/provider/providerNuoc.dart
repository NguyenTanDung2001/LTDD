import 'package:flutter/material.dart';
import 'package:app_doan/models/modelSanPham.dart';
import 'package:app_doan/repository/api.dart';

class providerSanPham with ChangeNotifier {
  List<modelSanPham> sanphams = [];
  bool loading = false;
  getNuoc(context) async {
    loading = true;
    sanphams = await getAllNuoc(context);
    loading = false;

    notifyListeners();
  }
}
