import 'package:flutter/material.dart';
import 'package:app_doan/Splash_Screen/size_config.dart';
import 'body.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);
   static String routeName = "/splash";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(backgroundColor: Colors.yellow[300], body: body());
  }
}
