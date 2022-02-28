import 'package:app_doan/models/modelSanPham.dart';
import 'package:app_doan/models/modelGioHang.dart';
import 'package:app_doan/provider/providerDsBun.dart';
import 'package:flutter/material.dart';

class providerGioHang with ChangeNotifier {
  List<modelGioHang> _carts = [];
  List<modelGioHang> get carts => _carts;
  Future<void> fetchData() async {
    List<modelGioHang> carts = await [];
    _carts = carts;
  }

  void removeAllCart() {
    _carts = [];
    notifyListeners();
  }

  void addSanPham(modelSanPham sanpham) {
    _carts.add(
      modelGioHang(
        sanpham: sanpham,
        soluong: 1,
      ),
    );
    notifyListeners();
  }
}
