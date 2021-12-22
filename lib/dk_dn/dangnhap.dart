// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
// ignore: unused_import
import 'dangky.dart';

class DangNhap extends StatelessWidget {
  const DangNhap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Color color = Theme.of(context).primaryColor;
    // Widget buttonSection = Row(
    //   //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //   children: [
    //     // ignore: deprecated_member_use
    //     RaisedButton(
    //       shape: RoundedRectangleBorder(
    //           borderRadius: BorderRadius.circular(30.0),
    //           side: const BorderSide(color: Colors.red)),
    //       onPressed: () {},
    //       child: buildButtonColumn(color, Icons.arrow_back),
    //     ),
    //   ],
    // );

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

    Widget username = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: '',
      decoration: InputDecoration(
        hintText: 'Enter your email...',
        contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    Widget password = TextFormField(
      autofocus: false,
      initialValue: '',
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Enter your password...',
        contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );

    Widget loginButton = RaisedButton(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
          side: const BorderSide(color: Colors.red)),
      child: const Text('Đăng nhập'),
      textColor: Colors.white,
      color: Theme.of(context).errorColor,
      elevation: 10.0,
      splashColor: Colors.blueGrey,
      onPressed: () {
        // Perform some action
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
                Image.asset(
                  'images/logoapp.png',
                  width: 220,
                  height: 220,
                ),
                textSection2,
                const SizedBox(height: 10.0),
                username,
                const SizedBox(height: 10.0),
                password,
                const SizedBox(height: 10.0),
                loginButton,
                const SizedBox(height: 5.0),
                registerButton,
                const SizedBox(height: 10.0),
                // const Text(
                //   'Hoặc đăng nhập qua',
                //   style: TextStyle(
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Column buildButtonColumn(
  //   Color color,
  //   IconData icon,
  // ) {
  //   return Column(
  //     mainAxisSize: MainAxisSize.min,
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     children: [
  //       Icon(icon, color: color),
  //       Container(
  //         margin: const EdgeInsets.only(left: 10),
  //       ),
  //     ],
  //   );
  // }
}
