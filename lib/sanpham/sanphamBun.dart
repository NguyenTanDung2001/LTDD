import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../app_bar.dart';
import '../search_box.dart';
import 'danhsachBun.dart';

class DanhSachSanPhamBun extends StatelessWidget {
  const DanhSachSanPhamBun({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'danh sach bun',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: homeAppBar(context),
          body: ListView(
            children: [
              SearchBox(
                onChanged: (value) {},
              ),
              const Text(
                'Thực đơn về Bún',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 15),
              DachSachBun(),
              DachSachBun(),
              DachSachBun(),
              DachSachBun(),
              DachSachBun(),
              DachSachBun(),
            ],
          )),
    );
  }
}
