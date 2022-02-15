import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DachSachBun extends StatelessWidget {
  const DachSachBun({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        child: Image.asset('images/sanpham1.jpg', width: 100, height: 100),
        onPressed: () {
          Navigator.pushNamed(context, '/chitietsanpham');
        },
      ),
    );
    return Container(
      // padding: const EdgeInsets.symmetric(horizontal: 35),
      child: Material(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: FlatButton(
                child:
                    Image.asset('images/sanpham1.jpg', width: 100, height: 100),
                onPressed: () {
                  Navigator.pushNamed(context, '/chitietsanpham');
                },
              ),
            ),
            Expanded(
              child: Thongtin,
            ),
            Expanded(
              child: IconButton(
                icon: SvgPicture.asset("icons/add.svg", width: 20, height: 20),
                onPressed: () {},
              ),
            ),
            Expanded(
              child: IconButton(
                icon: Icon(Icons.favorite),
                color: Colors.red,
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
