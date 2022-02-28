// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:app_doan/trang_chu/category_item.dart';
import 'package:app_doan/sanpham/danhsachsanphamGioHang.dart';
import 'package:app_doan/repository/api.dart';
import 'package:app_doan/models/modelLoaiSanPham.dart';
import 'package:http/http.dart' as http;
import 'package:app_doan/provider/providerLoaiSanPham.dart';
import 'package:provider/provider.dart';

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
              "Tất cả",
              style: TextStyle(
                fontSize: 14.0,
              ),
            ),
          ),
          SizedBox(width: 7),
          Container(
              child: FutureBuilder<List<modelLoaiSanPham>>(
                  future: getAllLoaiSanPham(context),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      List<modelLoaiSanPham>? data = snapshot.data;
                      return Row(
                        children: [
                          ...List.generate(data!.length, (index) {
                            return Row(
                              children: [
                                FlatButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side:
                                          const BorderSide(color: Colors.red)),
                                  color: Colors.white,
                                  textColor: Colors.blue,
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 10, 20, 10),
                                  onPressed: () {
                                    if (data[index].id == 1) {
                                      Navigator.pushNamed(
                                          context, '/sanphamBun');
                                    } else if (data[index].id == 2) {
                                      Navigator.pushNamed(
                                          context, '/sanphamCom');
                                    } else if (data[index].id == 3) {
                                      Navigator.pushNamed(
                                          context, '/sanphamFastFood');
                                    } else if (data[index].id == 4) {
                                      Navigator.pushNamed(
                                          context, '/sanphamNuoc');
                                    }
                                  },
                                  child: Text(
                                    data[index].tenloai,
                                    style: TextStyle(
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 7),
                              ],
                            );
                          })
                        ],
                      );
                    } else if (snapshot.hasError) {
                      return Text('Lỗi');
                    }
                    return CircularProgressIndicator();
                  })),
          // FlatButton(
          //   shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(18.0),
          //       side: const BorderSide(color: Colors.red)),
          //   color: Colors.white,
          //   textColor: Colors.blue,
          //   padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          //   onPressed: () {
          //     Navigator.pushNamed(context, '/sanphamBun');
          //   },
          //   child: const Text(
          //     "Bún",
          //     style: TextStyle(
          //       fontSize: 14.0,
          //     ),
          //   ),
          // ),
          //SizedBox(width: 7),

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
