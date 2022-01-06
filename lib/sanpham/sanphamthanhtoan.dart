import 'package:flutter/material.dart';

class DachSachMonAnThanhToan extends StatelessWidget {
  const DachSachMonAnThanhToan({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget AnhMonAn = Container(
      child: Image.asset('images/sanpham1.jpg', width: 100, height: 100),
    );

    Widget Thongtin = Padding(
      padding: const EdgeInsets.fromLTRB(0, 1, 0, 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          Text(
            'Tên món ăn: Bún bò',
          ),
          Text(
            'Số lượng: 2',
          ),
        ],
      ),
    );

    Widget Gia = Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          '40000 VND',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.red,
          ),
        ),
      ],
    );

    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(child: AnhMonAn),
          Expanded(child: Thongtin),
          Expanded(child: Gia),
        ],
      ),
    );
  }
}
