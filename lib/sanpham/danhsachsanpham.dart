import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DachSachMonAn extends StatelessWidget {
  const DachSachMonAn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget Thongtin = Padding(
      padding: const EdgeInsets.fromLTRB(1, 1, 1, 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          Text(
            'Bún bò',
          ),
          Text(
            'Giá: 20000 VND',
            style: TextStyle(fontSize: 11),
          ),
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
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: MonAn,
            ),
            Expanded(
              child: Thongtin,
            ),
            Expanded(
              child: IconButton(
                icon:
                    SvgPicture.asset("icons/delete.svg", width: 20, height: 20),
                onPressed: () {},
              ),
            ),
          ],
        ));
  }
}
