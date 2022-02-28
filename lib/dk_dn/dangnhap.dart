// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
// ignore: unused_import
import 'dangky.dart';
import 'package:app_doan/provider/providerDangNhap.dart';
import 'package:app_doan/repository/api.dart';
import 'package:app_doan/models/modelKhachHang.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class DangNhap extends StatefulWidget {
  DangNhap({Key? key}) : super(key: key);
  static String routeName = "/dangnhap";
  @override
  State<DangNhap> createState() => _LoginState();
}

class _LoginState extends State<DangNhap> {
  TextEditingController email = TextEditingController();
  TextEditingController passwords = TextEditingController();
  @override
  void initState() {
    email = TextEditingController();
    passwords = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget textSection2 = const Padding(
      padding: EdgeInsets.fromLTRB(10, 1, 1, 10),
      child: Text(
        'My Account',
        style: TextStyle(
          fontSize: 40,
          fontFamily: 'MyFont',
          color: Colors.red,
        ),
        softWrap: true,
      ),
    );

    // Widget username = TextFormField(
    //   controller: email,
    //   keyboardType: TextInputType.emailAddress,
    //   autofocus: false,
    //   initialValue: '',
    //   decoration: InputDecoration(
    //     hintText: 'Enter your email...',
    //     contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
    //     border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
    //   ),
    // );

    // Widget password = TextFormField(
    //   controller: passwords,
    //   autofocus: false,
    //   initialValue: '',
    //   obscureText: true,
    //   decoration: InputDecoration(
    //     hintText: 'Enter your password...',
    //     contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
    //     border: OutlineInputBorder(
    //       borderRadius: BorderRadius.circular(32.0),
    //     ),
    //   ),
    // );

    Widget loginButton = RaisedButton(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
          side: const BorderSide(color: Colors.red)),
      child: const Text('Đăng nhập'),
      textColor: Colors.white,
      color: Theme.of(context).errorColor,
      elevation: 10.0,
      splashColor: Colors.blueGrey,
      onPressed: () async {
        if (email.text.isEmpty || passwords.text.isEmpty) {
          Text('Không được bỏ trống tài khoản !');
          Navigator.pushNamed(context, '/dangnhap');
        } else if (passwords.text.isEmpty && email.text.isEmpty) {
          Text('Không được bỏ trống !');
          Navigator.pushNamed(context, '/dangnhap');
        } else if (email.text == 'khoa@gmail.com' &&
            passwords.text == '123456') {
          await Provider.of<providerDangNhap>(context, listen: false)
              .dangnhap(email.text, passwords.text);
          Navigator.pushNamed(context, '/trangchu');
        } else {
          Navigator.pushNamed(context, '/dangnhap');
        }
      },
    );

    Widget registerButton = RaisedButton(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
          side: const BorderSide(color: Colors.red)),
      child: const Text('Chưa có tài khoản ?'),
      textColor: Colors.white,
      color: Theme.of(context).focusColor,
      elevation: 10.0,
      splashColor: Colors.blueGrey,
      onPressed: () {
        // Perform some action
        Navigator.pushNamed(context, '/dangky');
      },
    );

    return MaterialApp(
      title: 'Đăng nhập',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.yellow[300],
        body: ListView(
          children: [
            // buttonSection,
            Column(
              children: [
                const SizedBox(height: 10),
                Image.asset(
                  'images/logoapp.png',
                  width: 220,
                  height: 220,
                ),
                textSection2,
                const SizedBox(height: 50.0),
                //username,
                TextField(
                  controller: email,
                  keyboardType: TextInputType.emailAddress,
                  autofocus: false,
                  decoration: InputDecoration(
                    hintText: 'Enter your email...',
                    contentPadding:
                        const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32.0)),
                  ),
                ),
                const SizedBox(height: 10.0),
                TextField(
                  controller: passwords,
                  autofocus: false,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Enter your password...',
                    contentPadding:
                        const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                loginButton,
                const SizedBox(height: 5.0),
                registerButton,
                const SizedBox(height: 10.0),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
