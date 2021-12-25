import 'package:app_doan/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

AppBar homeAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      icon: SvgPicture.asset("icons/menu.svg"),
      onPressed: () {},
    ),
    title: RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "sellVN",
            style: TextStyle(color: ksecondaryColor),
          ),
          TextSpan(
            text: "Food",
            style: TextStyle(color: kPrimaryColor),
          ),
        ],
      ),
    ),
    actions: <Widget>[
      IconButton(
        icon: SvgPicture.asset("icons/notification.svg"),
        onPressed: () {},
      ),
    ],
  );
}
