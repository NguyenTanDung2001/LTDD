import 'package:flutter/material.dart';
import 'package:app_doan/trang_chu/item_cart.dart';
import 'package:app_doan/repository/api.dart';
import 'package:app_doan/models/modelSanPham.dart';
import 'package:http/http.dart' as http;
import 'package:app_doan/provider/providerSanPham.dart';
import 'package:provider/provider.dart';

class ItemList extends StatelessWidget {
  const ItemList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: FutureBuilder<List<modelSanPham>>(
        future: getAllSanPham(context),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<modelSanPham>? data = snapshot.data;
            return Row(
              children: [
                ...List.generate(data!.length, (index) {
                  return Row(children: [
                    ItemCard(
                      image: "images/food.jpg",
                      title: data[index].tensp,
                      gia: data[index].dongia.toString(),
                      press: () {},
                    ),
                  ]);
                })
              ],
            );
          } else if (snapshot.hasError) {
            return Text('Lỗi');
          }
          return CircularProgressIndicator();
        },
      ),
    );
  }
}
