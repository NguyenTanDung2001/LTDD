import 'package:app_doan/dk_dn/dangnhap.dart';
import 'package:app_doan/taikhoan/screen/anhdaidien.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:app_doan/taikhoan/screen/menu.dart';
import 'package:app_doan/main.dart';

class body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          anhdaidien(),
          SizedBox(height: 20),
          menu_taikhoan(
            text: "Tài Khoản",
            icon: "icons/User Icon.svg",
            press: () => {},
          ),
          menu_taikhoan(
            text: "Thông Báo",
            icon: "icons/Bell.svg",
            press: () {},
          ),
         
       RaisedButton(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
          side: const BorderSide(color: Colors.red)),
      child: const Text('Đăng Xuất'),
      textColor: Colors.red,
      color: Theme.of(context).focusColor,
      elevation: 10.0,
      splashColor: Colors.red,
      onPressed: () {
        Navigator.pushNamed(context, DangNhap.routeName);
      },
    )
        ],
        
      ),
    );
  }
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
          margin: const EdgeInsets.only(left: 0),
        ),
      ],
    );
  }


