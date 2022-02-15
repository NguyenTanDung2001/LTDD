import 'package:flutter/material.dart';

class modelSanPham extends ChangeNotifier {
  int id;
  String masp;
  String tensp;
  String hinhanh;
  int soluong;
  int tinhtrang;
  int dongia;
  int loaispid;

  modelSanPham({
    required this.id,
    required this.masp,
    required this.tensp,
    required this.hinhanh,
    required this.soluong,
    required this.tinhtrang,
    required this.dongia,
    required this.loaispid,
  });

  factory modelSanPham.fromJson(Map<String, dynamic> json) => modelSanPham(
        id: json['id'],
        masp: json['masp'],
        tensp: json['tensp'],
        hinhanh: json['hinhanh'],
        soluong: json['soluong'],
        tinhtrang: json['tinhtrang'],
        dongia: json['dongia'],
        loaispid: json['loaispid'],
      );
}
