import 'package:flutter/material.dart';
import 'package:app_doan/trang_chu/category_item.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CategoryItem(
            title: "Đề xuất",
            isActive: true,
            press: () {},
          ),
          CategoryItem(
            title: "Cơm",
            press: () {
              Navigator.pushNamed(context, '/monanyeuthich');
            },
          ),
          CategoryItem(
            title: "Phở",
            press: () {},
          ),
          CategoryItem(
            title: "FastFood",
            press: () {},
          ),
          CategoryItem(
            title: "Nước uống",
            press: () {},
          ),
        ],
      ),
    );
  }
}
