import 'dart:async';

import 'package:app_doan/thanhtoan/giohang.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:count_stepper/count_stepper.dart';
import 'package:app_doan/models/modelGioHang.dart';
import 'package:app_doan/provider/providerGioHang.dart';
import 'package:provider/provider.dart';
import 'package:app_doan/models/modelSanPham.dart';
import 'package:app_doan/provider/providerSanPham.dart';

class DsGioHang extends StatefulWidget {
  DsGioHang({Key? key}) : super(key: key);
  @override
  State<DsGioHang> createState() => _GioHang();
}

class _GioHang extends State<DsGioHang> {
  bool isLoading = false;
  List<modelGioHang> carts = [];
  modelGioHang cart = modelGioHang();
  @override
  void initState() {
    super.initState();
    setState(() {
      isLoading = true;
    });
    Provider.of<providerGioHang>(context, listen: false).fetchData();
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    carts = Provider.of<providerGioHang>(context).carts;
    // Widget SL = Row(mainAxisAlignment: MainAxisAlignment.end, children: [
    //   CountStepper(
    //     iconColor: Theme.of(context).primaryColor,
    //     defaultValue: 1,
    //     max: 20,
    //     min: 1,
    //     iconDecrementColor: Colors.red,
    //     splashRadius: 25,
    //     onPressed: (value) {},
    //   )
    // ]);

    // Widget Thongtin = Padding(
    //   padding: const EdgeInsets.fromLTRB(0, 1, 0, 1),
    //   child: Column(
    //     mainAxisAlignment: MainAxisAlignment.start,
    //     children: const [
    //       Text(
    //         'Bún bò',
    //       ),
    //       Text(
    //         'Giá: 20000 VND',
    //         style: TextStyle(
    //           fontSize: 11,
    //           color: Colors.red,
    //         ),
    //       ),
    //     ],
    //   ),
    // );

    // Widget MonAn = Container(
    //   // ignore: deprecated_member_use
    //   child: FlatButton(
    //     onPressed: () {
    //       debugPrint('Button img');
    //     },
    //     child: Image.asset('images/sanpham1.jpg', width: 100, height: 100),
    //   ),
    // );
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: Consumer<providerGioHang>(
        builder: (context, data, child) {
          return (Column(children: [
            FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: const BorderSide(color: Colors.red)),
              color: Colors.white,
              textColor: Colors.blue,
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              onPressed: () {
                setState(() {
                  carts.removeAt(data.carts.length);
                });
              },
              child: const Text(
                "Xoá toàn bộ",
                style: TextStyle(
                  fontSize: 14.0,
                ),
              ),
            ),
            ...List.generate(data.carts.length, (index) {
              return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        // ignore: deprecated_member_use
                        child: FlatButton(
                          onPressed: () {
                            debugPrint('Button img');
                          },
                          child: Image.asset('images/sanpham1.jpg',
                              width: 100, height: 100),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            carts[index].sanpham!.tensp.toString(),
                          ),
                          Text(
                            carts[index].sanpham!.dongia.toString(),
                            style: TextStyle(
                              fontSize: 11,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CountStepper(
                              iconColor: Theme.of(context).primaryColor,
                              defaultValue: 1,
                              max: 20,
                              min: 1,
                              iconDecrementColor: Colors.red,
                              splashRadius: 25,
                              onPressed: (value) {},
                            )
                          ]),
                    ),
                    Expanded(
                      child: IconButton(
                        icon: SvgPicture.asset("icons/delete.svg",
                            width: 20, height: 20),
                        onPressed: () {
                          setState(() {
                            carts.removeAt(index);
                          });
                        },
                      ),
                    ),
                  ]);
            })
          ]));
          return CircularProgressIndicator();
        },
      ),
    );
  }
}
