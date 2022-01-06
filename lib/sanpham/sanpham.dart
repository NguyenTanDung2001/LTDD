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

    /*  Widget sanpham = const Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20)) */
    Widget Thongtin = Container(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          Text(
            'Bún bò',
          ),
          Text(',Giá: 3000 VNĐ')
        ],
      ),
    );
    Widget Thongtin1 = Container(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          Text(
            'Bún bò',
          ),
          Text(',Giá: 3000 VNĐ')
        ],
      ),
    );
    Widget MonAn = Container(
      // ignore: deprecated_member_use
      child: FlatButton(
        onPressed: () {
          debugPrint('Button img');
        },
        child: Image.asset('images/sanpham1.jpg', width: 100, height: 100),
      ),
    );
    Widget Them = Container(
      child: IconButton(
        icon: SvgPicture.asset("icons/add.svg", width: 20, height: 20),
        onPressed: () {},
      ),
    );
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
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 2,
                child: MonAn,
              ),
              Expanded(
                flex: 3,
                child: Thongtin,
              ),
              Expanded(
                child: Them,
              ),
            ],
          ),
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
