import 'package:flutter/material.dart';

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
    /*  Widget sanpham = const Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20)) */

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
        body: ListView(
          children: [
            thanhTimKiem,
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
