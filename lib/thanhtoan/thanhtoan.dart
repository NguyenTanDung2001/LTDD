import 'package:app_doan/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

import '../app_bar.dart';

class ThanhToan extends StatelessWidget {
  const ThanhToan({Key? key}) : super(key: key);
  static String routeName = "/thanhtoan";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Món ăn',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //backgroundColor: Colors.yellow[300],
        appBar: homeAppBar(context),
        bottomNavigationBar: BottomNavBar(),
        body: ListView(
          children: <Widget>[
            const SizedBox(height: 15.0),
            const Text(
              'Thanh Toán',
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
                    '65 Huỳnh Thúc Kháng, P.Bến Nghé, Q.1, Tp.HCM',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 14,
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
                    "Thay đổi địa chỉ",
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
}
