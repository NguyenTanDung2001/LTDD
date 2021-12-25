import 'package:app_doan/trang_chu/item_list.dart';
import 'package:flutter/material.dart';
import 'package:app_doan/trang_chu/search_box.dart';
import 'package:app_doan/trang_chu/category_list.dart';
import 'package:app_doan/trang_chu/discount_cart.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SearchBox(
            onChanged: (value) {},
          ),
          CategoryList(),
          ItemList(),
          DiscountCard(),
        ],
      ),
    );
  }
}
