import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app_doan/app_bar.dart';
import 'package:app_doan/taikhoan/screen/anhdaidien.dart';
import 'package:app_doan/bottom_nav_bar.dart';

class chinhsuatk2 extends StatefulWidget {
  const chinhsuatk2({Key? key}) : super(key: key);

  @override
  State<chinhsuatk2> createState() => _chisuatk2State();
}

class _chisuatk2State extends State<chinhsuatk2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      bottomNavigationBar: Container(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 15),
            primary: Colors.red,
          ),
          onPressed: () {},
          child: const Text(
            'Lưu lại',
            style: TextStyle(fontSize: 28),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 10),
            Container(
              child: anhdaidien(),
            ),
            SizedBox(height: 10),
            Text(
              'Ảnh đại diện',
              style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w900,
                  color: Colors.black),
            ),
            TextFormField(
              initialValue: "Khoa",
              textInputAction: TextInputAction.next,
              style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              decoration: const InputDecoration(
                labelText: 'Tên Đăng Nhập',
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.yellow),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.yellow),
                ),
              ),
            ),
            TextFormField(
              initialValue: "khoa@gmail.com",
              textInputAction: TextInputAction.next,
              style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              decoration: const InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.yellow),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.yellow),
                ),
              ),
            ),
            TextFormField(
              initialValue: "+8412456678",
              textInputAction: TextInputAction.next,
              style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              decoration: const InputDecoration(
                labelText: 'Số Điện Thoại',
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.yellow),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.yellow),
                ),
              ),
            ),
            TextFormField(
              initialValue: "65 Huỳnh Thúc Kháng, P.Bến Nghé, Q.1, Tp.HCM",
              textInputAction: TextInputAction.next,
              style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              decoration: const InputDecoration(
                labelText: 'Địa chỉ',
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.yellow),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.yellow),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
