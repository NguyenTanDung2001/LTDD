import 'package:flutter/material.dart';
import 'bodyForm.dart';
import 'package:app_doan/app_bar.dart';

class chinhsuatk extends StatelessWidget {
  const chinhsuatk({Key? key}) : super(key: key);
  //static String routeName = "/chinhsuatk";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Tài Khoản',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: homeAppBar(context),
          body: bodyForm(),
        ));
  }
}
