import 'package:flutter/material.dart';

import '../app_bar.dart';
import '../bottom_nav_bar.dart';
import '../search_box.dart';

class DanhSachSanPham extends StatelessWidget {
  const DanhSachSanPham({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'san pham',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.yellow[300],
        appBar: homeAppBar(context),
        bottomNavigationBar: BottomNavBar(),
        body: ListView(
          children: [
            SearchBox(
              onChanged: (value) {},
            ),
          ],
        ),
      ),
    );
  }
}
