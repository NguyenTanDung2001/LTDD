// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import '../app_bar.dart';
import 'package:app_doan/bottom_nav_bar.dart';

import 'account/account.dart';
import 'package:app_doan/taikhoan/screen/anhdaidien.dart';

class taikhoan extends StatelessWidget {
  const taikhoan({Key? key}) : super(key: key);
  //static String routeName = "/taikhoan";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Tài Khoản',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: homeAppBar(context),
          bottomNavigationBar: Container(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 15),
                primary: Colors.red,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/dangnhap');
              },
              child: const Text(
                'Đăng xuất',
                style: TextStyle(fontSize: 28),
              ),
            ),
          ),
          body: ListView(
            children: [
              SizedBox(height: 20),
              anhdaidien(),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
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
            ],
          ),
        ));
  }
}
