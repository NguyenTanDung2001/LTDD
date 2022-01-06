import 'package:flutter/material.dart';
import '../app_bar.dart';
import 'package:count_stepper/count_stepper.dart';

class ChiTietSanPham extends StatelessWidget {
  const ChiTietSanPham({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget ChiTietAnh = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('images/sanpham1.jpg', width: 420, height: 420),
        ],
      ),
    );

    Widget ChiTietThongTin = Container(
      child: Column(
        children: [
          Text(
            'Tên món ăn: Bún bò',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Giá: 20000 VND',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Tình trạng: Còn hàng',
          ),
        ],
      ),
    );

    Widget SL = Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      CountStepper(
        iconColor: Colors.blue,
        defaultValue: 1,
        max: 20,
        min: 1,
        iconDecrementColor: Colors.red,
        splashRadius: 25,
        onPressed: (value) {},
      )
    ]);

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
              ChiTietAnh,
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: ChiTietThongTin,
                  ),
                  Expanded(
                    child: SL,
                  ),
                  Expanded(
                    child: IconButton(
                      icon: Icon(Icons.favorite),
                      color: Colors.red,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
