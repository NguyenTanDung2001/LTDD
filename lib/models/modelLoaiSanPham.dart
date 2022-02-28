import 'package:flutter/material.dart';

class modelLoaiSanPham extends ChangeNotifier {
  int id;
  String tenloai;

  modelLoaiSanPham({required this.id, required this.tenloai});

  factory modelLoaiSanPham.fromJson(Map<String, dynamic> json) =>
      modelLoaiSanPham(
        id: json['id'],
        tenloai: json['tenloai'],
      );
}
