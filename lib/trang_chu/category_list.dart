// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:app_doan/trang_chu/category_item.dart';
import 'package:app_doan/sanpham/danhsachsanpham.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        ///mainAxisAlignment: MainAxisAlignment.end,
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(width: 10),
          FlatButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: const BorderSide(color: Colors.red)),
            color: Colors.yellow,
            textColor: Colors.blue,
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            onPressed: () {},
            child: const Text(
              "Đề xuất",
              style: TextStyle(
                fontSize: 14.0,
              ),
            ),
          ),
          SizedBox(width: 7),
          FlatButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: const BorderSide(color: Colors.red)),
            color: Colors.white,
            textColor: Colors.blue,
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            onPressed: () {},
            child: const Text(
              "Cơm",
              style: TextStyle(
                fontSize: 14.0,
              ),
            ),
          ),
          SizedBox(width: 7),
          FlatButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: const BorderSide(color: Colors.red)),
            color: Colors.white,
            textColor: Colors.blue,
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            onPressed: () {
              Navigator.pushNamed(context, '/sanpham');
            },
            child: const Text(
              "Bún",
              style: TextStyle(
                fontSize: 14.0,
              ),
            ),
          ),
          SizedBox(width: 7),
          FlatButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: const BorderSide(color: Colors.red)),
            color: Colors.white,
            textColor: Colors.blue,
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            onPressed: () {},
            child: const Text(
              "FastFood",
              style: TextStyle(
                fontSize: 14.0,
              ),
            ),
          ),
          SizedBox(width: 7),
          FlatButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: const BorderSide(color: Colors.red)),
            color: Colors.white,
            textColor: Colors.blue,
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            onPressed: () {},
            child: const Text(
              "Đồ uống",
              style: TextStyle(
                fontSize: 14.0,
              ),
            ),
          ),

          // CategoryItem(
          //   title: "Đề xuất",
          //   isActive: true,
          //   press: () {},
          // ),
          // CategoryItem(
          //   title: "Cơm",
          //   press: () {},
          // ),
          // CategoryItem(
          //   title: "Phở",
          //   press: () {},
          // ),
          // CategoryItem(
          //   title: "FastFood",
          //   press: () {},
          // ),
          // CategoryItem(
          //   title: "Nước uống",
          //   press: () {},
          // ),
        ],
      ),
    );
  }
}
