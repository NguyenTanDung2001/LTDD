import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../app_bar.dart';
import '../search_box.dart';
import 'danhsachBun.dart';
import 'package:app_doan/repository/api.dart';
import 'package:app_doan/models/modelSanPham.dart';
import 'package:http/http.dart' as http;
import 'package:app_doan/provider/providerSanPham.dart';
import 'package:provider/provider.dart';
import 'package:app_doan/models/modelGioHang.dart';
import 'package:app_doan/provider/providerGioHang.dart';

class DanhSachSanPhamFastFood extends StatelessWidget {
  const DanhSachSanPhamFastFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cart = Provider.of<providerGioHang>(context);
    var product = Provider.of<providerSanPham>(context);
    Widget Thongtin = Padding(
      padding: const EdgeInsets.fromLTRB(0, 1, 0, 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          Text(
            'Bún bò',
          ),
          Text(
            'Giá: 20000 VND',
            style: TextStyle(
              fontSize: 11,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );

    Widget MonAn = Container(
      // ignore: deprecated_member_use
      child: FlatButton(
        child: Image.asset('images/fastfood.jpg', width: 100, height: 100),
        onPressed: () {
          Navigator.pushNamed(context, '/chitietsanpham');
        },
      ),
    );

    return MaterialApp(
      title: 'danh sach bun',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: homeAppBar(context),
          body: Container(
            child: FutureBuilder<List<modelSanPham>>(
              future: getAllFastFood(context),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  List<modelSanPham>? data = snapshot.data;
                  return Column(
                    children: [
                      SearchBox(
                        onChanged: (value) {},
                      ),
                      Text(
                        'Danh sách Fast Food',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 15),
                      ...List.generate(data!.length, (index) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: MonAn,
                              // ignore: deprecated_member_use
                              //     FlatButton(
                              //   child: Image.asset('images/sanpham1.jpg',
                              //       width: 50, height: 50),
                              //   onPressed: () {
                              //     Navigator.pushNamed(
                              //         context, '/chitietsanpham');
                              //   },
                              // ),
                            ),
                            Expanded(
                              child: //Thongtin
                                  Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    data[index].tensp,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.red,
                                    ),
                                  ),
                                  Text(
                                    data[index].dongia.toString(),
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.red,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: IconButton(
                                icon: SvgPicture.asset("icons/add.svg",
                                    width: 20, height: 20),
                                onPressed: () => cart.addSanPham(data[index]),
                              ),
                            ),
                            Expanded(
                              child: IconButton(
                                icon: Icon(Icons.favorite),
                                color: Colors.red,
                                onPressed: () => cart.addSanPham(data[index]),
                              ),
                            ),
                          ],
                        );
                      })
                    ],
                  );
                } else if (snapshot.hasError) {
                  return Text('Lỗi');
                }
                return CircularProgressIndicator();
              },
            ),
          )),
    );
  }
}
