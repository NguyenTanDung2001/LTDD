import 'package:flutter/material.dart';
import 'package:app_doan/trang_chu/item_cart.dart';

class ItemList extends StatelessWidget {
  const ItemList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          ItemCard(
            image: "images/sanpham1.jpg",
            title: "Burger & Beer",
            shopName: "MacDonald's",
            press: () {},
          ),
          ItemCard(
            image: "images/sanpham1.jpg",
            title: "Chinese & Noodles",
            shopName: "Wendys",
            press: () {},
          ),
          ItemCard(
            image: "images/sanpham1.jpg",
            title: "Burger & Beer",
            shopName: "MacDonald's",
            press: () {},
          ),
          ItemCard(
            image: "images/sanpham1.jpg",
            title: "Burger & Beer",
            shopName: "MacDonald's",
            press: () {},
          )
        ],
      ),
    );
  }
}
