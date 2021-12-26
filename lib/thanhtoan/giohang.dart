import 'package:app_doan/bottom_nav_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../app_bar.dart';

class GioHang extends StatelessWidget {
  const GioHang({Key? key}) : super(key: key);

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

    Widget thanhTimKiem = const Padding(
      padding: EdgeInsets.fromLTRB(10, 1, 1, 10),
      child: TextField(
        cursorColor: Colors.red,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search),
          hintText: 'Bạn muốn ăn gì hôm nay?',
          labelStyle: TextStyle(color: Colors.red),
        ),
      ),
    );

    return MaterialApp(
      title: 'Giỏ hàng',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //backgroundColor: Colors.yellow[300],
        appBar: homeAppBar(context),
        bottomNavigationBar: BottomNavBar(),
        body: ListView(
          children: <Widget>[
            const SizedBox(height: 18.0),
            const Text(
              'Giỏ hàng',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.red,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 7.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(1, 1, 10, 1),
                  child: Text(
                    'Danh sách món ăn',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                // ignore: deprecated_member_use
                FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: const BorderSide(color: Colors.red)),
                  color: Colors.white,
                  textColor: Colors.blue,
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  onPressed: () {},
                  child: const Text(
                    "Xoá toàn bộ",
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
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
