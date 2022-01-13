// ignore_for_file: deprecated_member_use

import 'dart:math';

import 'package:app_doan/dk_dn/dangnhap.dart';
import 'package:app_doan/taikhoan/screen/anhdaidien.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:app_doan/taikhoan/screen/menu.dart';
import 'package:app_doan/main.dart';
import '../account/account.dart';

class body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          anhdaidien(),
          SizedBox(height: 20),
          // menu_taikhoan(
          //   text: "Tài Khoản",
          //   icon: "icons/User Icon.svg",
          //   press: () {},
          // ),
          // menu_taikhoan(
          //   text: "Thông Báo",
          //   icon: "icons/Bell.svg",
          //   press: () {},
          // ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 25),
              primary: Colors.white70,
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/chinhsuatk');
            },
            child: const Text(
              'Chỉnh sửa tài khoản',
              style: TextStyle(fontSize: 20, color: Colors.red),
            ),
          ),
          RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
                side: const BorderSide(color: Colors.red)),
            child: const Text('Đăng Xuất'),
            textColor: Colors.red,
            color: Theme.of(context).focusColor,
            elevation: 10.0,
            splashColor: Colors.red,
            onPressed: () {
              Navigator.pushNamed(context, '/dangnhap');
            },
          )
        ],
      ),
    );
  }
}

Column buildButtonColumn(
  Color color,
  IconData icon,
) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color),
      Container(
        margin: const EdgeInsets.only(left: 0),
      ),
    ],
  );
}
