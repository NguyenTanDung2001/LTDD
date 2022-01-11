import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DanhSachSanPham extends StatelessWidget {
  const DanhSachSanPham({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    Widget buttonSection = Row(
      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // ignore: deprecated_member_use
        RaisedButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
              side: const BorderSide(color: Colors.red)),
          onPressed: () {},
          child: buildButtonColumn(color, Icons.arrow_back),
        ),
      ],
    );

    Widget buttonListType = Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        // ignore: deprecated_member_use
        RaisedButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
              side: const BorderSide(color: Colors.red)),
          onPressed: () {},
          child: buildButtonColumn(color, Icons.format_list_bulleted),
        ),
      ],
    );
    Widget Monan(String bunboImage, String Ten, String Gia) {
      double width = MediaQuery.of(context).size.width;
      return Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Container(
            height: 100.0,
            width: width - 40.0,
            child: Stack(children: [
              Padding(
                padding: EdgeInsets.only(left: 50.0),
                child: Container(
                    padding: EdgeInsets.only(left: 90.0, right: 0.0),
                    /*  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.white,
                    ), */
                    height: 100.0,
                    width: width - 90.0,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(Ten,
                                style: TextStyle(
                                  fontSize: 18.0,
                                )),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "$Gia",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                                fontSize: 15.0,
                              ),
                            )
                          ],
                        ),
                        Expanded(
                          child: IconButton(
                            icon: SvgPicture.asset("icons/add.svg",
                                width: 50, height: 50),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    )),
              ),
              Positioned(
                  left: 0.0,
                  child: Image(
                    image: AssetImage(bunboImage),
                    height: 100.0,
                    width: 100.0,
                  ))
            ])),
      );
    }

    return MaterialApp(
      title: 'danh sach san pham',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.yellow[300],
          appBar: AppBar(
            backgroundColor: Colors.yellow[300],
            automaticallyImplyLeading: false,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: buttonSection,
                ),
                const Expanded(
                  child: Text(
                    'sellVN Online',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 16,
                      fontFamily: 'MyFont',
                    ),
                  ),
                ),
                Expanded(
                  child: buttonListType,
                ),
              ],
            ),
          ),
          body: Padding(
            padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 20.0),
            child: Column(
              children: [
                Monan("images/sanpham1.jpg", "Bún bò", "20000 VNĐ"),
                Monan("images/sanpham1.jpg", "Bún bò", "20000 VNĐ"),
                Monan("images/sanpham1.jpg", "Bún bò", "20000 VNĐ"),
                Monan("images/sanpham1.jpg", "Bún bò", "20000 VNĐ"),
                Monan("images/sanpham1.jpg", "Bún bò", "20000 VNĐ"),
              ],
            ),
          )),
    );
  }

  Column buildButtonColumn(
    Color color,
    IconData icon,
  ) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(
            left: 10,
          ),
        ),
      ],
    );
  }
}
