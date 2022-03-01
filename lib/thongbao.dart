import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// import '../sanpham.dart';
import '../app_bar.dart';

class Thongbao extends StatelessWidget {
  const Thongbao({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'thong bao',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //backgroundColor: Colors.yellow[300],
        appBar: homeAppBar(context),

        body: ListView(
          children: <Widget>[
            const SizedBox(height: 18.0),
            const Text(
              'Thông báo',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.red,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 7.0),
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 100, vertical: 22),
                    primary: Colors.white70,
                  ),
                  onPressed: () {},
                  child: Text(
                    'Có đơn hàng đã được thanh toán lúc 12:50',
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}
