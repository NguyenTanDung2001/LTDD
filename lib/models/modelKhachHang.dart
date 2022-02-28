import 'package:flutter/material.dart';

class modelKhachHang extends ChangeNotifier {
  int? id;
  String? tenkh;
  String? diachi;
  String? sdt;
  String? makh;
  String? email;
  String? matkhau;

  modelKhachHang({
    this.id,
    this.tenkh,
    this.diachi,
    this.sdt,
    this.makh,
    this.email,
    this.matkhau,
  });

  factory modelKhachHang.fromJson(Map<String, dynamic> json) => modelKhachHang(
        id: json['id'],
        tenkh: json['tenkh'],
        diachi: json['diachi'],
        sdt: json['sdt'],
        makh: json['makh'],
        email: json['email'],
        matkhau: json['matkhau'],
      );

  set status(int status) {}
}
