import 'package:flutter/material.dart';
import 'package:app_doan/models/modelSanPham.dart';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

Future<List<modelSanPham>> getAllSanPham(context) async {
  List reponseList = [];
  final reponse = await http.get(
    Uri.parse('http://192.168.1.219:8000/api/san-pham/danh-sach'),
    headers: {
      HttpHeaders.contentTypeHeader: "application/json",
    },
  );
  if (reponse.statusCode == 200) {
    reponseList = json.decode(reponse.body);
  }
  return reponseList.map((data) => modelSanPham.fromJson(data)).toList();
}
