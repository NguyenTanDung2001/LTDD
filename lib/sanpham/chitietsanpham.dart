import 'package:flutter/material.dart';
import '../app_bar.dart';

class ChiTietSanPham extends StatelessWidget {
  const ChiTietSanPham({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget ChiTiet = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('images/sanpham1.jpg', width: 500, height: 500),
        ],
      ),
    );

    return MaterialApp(
        title: 'Chi tiết sản phẩm',
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
              onPressed: () {},
              child: const Text(
                'Thêm vào giỏ hàng',
                style: TextStyle(fontSize: 28),
              ),
            ),
          ),
          body: ListView(
            children: [
              ChiTiet,
            ],
          ),
        ));
  }
}
