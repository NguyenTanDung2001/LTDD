import 'package:app_doan/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:app_doan/sanpham/danhsachsanphamGioHang.dart';
import '../app_bar.dart';
import '../search_box.dart';
import 'sanphamyeuthich.dart';

class MonAnYeuThich extends StatelessWidget {
  const MonAnYeuThich({Key? key}) : super(key: key);
  static String routeName = "/yeuthich";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Món ăn',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //backgroundColor: Colors.yellow[300],
        appBar: homeAppBar(context),

        body: ListView(
          children: [
            SearchBox(
              onChanged: (value) {},
            ),
            const SizedBox(height: 10.0),
            const Text(
              'Yêu thích',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.red,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 18),
            DsGioHang(),
          ],
        ),
      ),
    );
  }
}
