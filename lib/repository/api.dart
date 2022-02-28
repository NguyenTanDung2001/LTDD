import 'package:flutter/material.dart';
import 'package:app_doan/models/modelSanPham.dart';
import 'package:app_doan/models/modelLoaiSanPham.dart';
import 'package:app_doan/models/modelKhachHang.dart';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

Future<List<modelSanPham>> getAllSanPham(context) async {
  List reponseList = [];
  final reponse = await http.get(
    Uri.parse('http://192.168.0.24:8000/api/san-pham/danh-sach'),
    headers: {
      HttpHeaders.contentTypeHeader: "application/json",
    },
  );
  if (reponse.statusCode == 200) {
    reponseList = json.decode(reponse.body);
  }
  return reponseList.map((data) => modelSanPham.fromJson(data)).toList();
}

Future<List<modelSanPham>> getAllBun(context) async {
  List reponseList = [];
  final reponse = await http.get(
    Uri.parse('http://192.168.0.24:8000/api/sanpham-bun/danh-sach'),
    headers: {
      HttpHeaders.contentTypeHeader: "application/json",
    },
  );
  if (reponse.statusCode == 200) {
    reponseList = json.decode(reponse.body);
  }
  return reponseList.map((data) => modelSanPham.fromJson(data)).toList();
}

Future<List<modelSanPham>> getAllCom(context) async {
  List reponseList = [];
  final reponse = await http.get(
    Uri.parse('http://192.168.0.24:8000/api/sanpham-com/danh-sach'),
    headers: {
      HttpHeaders.contentTypeHeader: "application/json",
    },
  );
  if (reponse.statusCode == 200) {
    reponseList = json.decode(reponse.body);
  }
  return reponseList.map((data) => modelSanPham.fromJson(data)).toList();
}

Future<List<modelSanPham>> getAllFastFood(context) async {
  List reponseList = [];
  final reponse = await http.get(
    Uri.parse('http://192.168.0.24:8000/api/sanpham-fastfood/danh-sach'),
    headers: {
      HttpHeaders.contentTypeHeader: "application/json",
    },
  );
  if (reponse.statusCode == 200) {
    reponseList = json.decode(reponse.body);
  }
  return reponseList.map((data) => modelSanPham.fromJson(data)).toList();
}

Future<List<modelSanPham>> getAllNuoc(context) async {
  List reponseList = [];
  final reponse = await http.get(
    Uri.parse('http://192.168.0.24:8000/api/sanpham-nuoc/danh-sach'),
    headers: {
      HttpHeaders.contentTypeHeader: "application/json",
    },
  );
  if (reponse.statusCode == 200) {
    reponseList = json.decode(reponse.body);
  }
  return reponseList.map((data) => modelSanPham.fromJson(data)).toList();
}

Future<List<modelLoaiSanPham>> getAllLoaiSanPham(context) async {
  List reponseList = [];
  final reponse = await http.get(
    Uri.parse('http://192.168.0.24:8000/api/loai-sanpham/danh-sach'),
    headers: {
      HttpHeaders.contentTypeHeader: "application/json",
    },
  );
  if (reponse.statusCode == 200) {
    reponseList = json.decode(reponse.body);
  }
  return reponseList.map((data) => modelLoaiSanPham.fromJson(data)).toList();
}

Future<modelKhachHang> dangnhapkh(email, matkhau) async {
  modelKhachHang resultKhachHang = modelKhachHang();
  try {
    final response = await http.post(
      Uri.parse('http://192.168.0.24:8000/api/khach-hang/login'),
      headers: {
        HttpHeaders.contentTypeHeader: "application/json",
      },
      body: jsonEncode(<String, String>{'Email': email, 'MatKhau': matkhau}),
    );

    if (response.statusCode == 200) {
      final item = json.decode(response.body);
      resultKhachHang = modelKhachHang.fromJson(item);
    } else {
      resultKhachHang.status = response.statusCode;
    }
  } catch (e) {
    rethrow;
  }
  return resultKhachHang;
}
