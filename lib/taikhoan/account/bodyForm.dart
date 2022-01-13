// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class bodyForm extends StatelessWidget {
  const bodyForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget textSection2 = const Padding(
      padding: EdgeInsets.fromLTRB(10, 1, 1, 10),
      child: Text(
        'Chỉnh Sửa Tài Khoản',
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
        hintText: 'Old Password',
        contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    Widget password = TextFormField(
      autofocus: false,
      initialValue: '',
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'New Password',
        contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );
    Widget enter_password = TextFormField(
      autofocus: false,
      initialValue: '',
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Enter New Password',
        contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );

    Widget registerButton = RaisedButton(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
          side: const BorderSide(color: Colors.red)),
      child: const Text('Thay đổi'),
      textColor: Colors.white,
      color: Theme.of(context).errorColor,
      elevation: 10.0,
      splashColor: Colors.blueGrey,
      onPressed: () {
        // Perform some action
      },
    );

    return MaterialApp(
      title: 'Đăng kí',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.yellow[300],
        body: ListView(
          children: [
            const SizedBox(height: 10.0),
            Column(
              children: [
                textSection2,
                const SizedBox(height: 30.0),
                username,
                const SizedBox(height: 20.0),
                password,
                const SizedBox(height: 20.0),
                enter_password,
                const SizedBox(height: 20.0),
                registerButton,
                const SizedBox(height: 20.0),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
