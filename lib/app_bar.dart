import 'package:app_doan/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

AppBar homeAppBar(BuildContext context) {
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
          margin: const EdgeInsets.only(
            left: 10,
          ),
        ),
      ],
    );
  }

  Color color = Theme.of(context).primaryColor;
  Widget buttonSection = Row(
    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      // ignore: deprecated_member_use
      RaisedButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
            side: const BorderSide(color: Colors.red)),
        onPressed: () {},
        child: buildButtonColumn(color, Icons.arrow_back),
      ),
    ],
  );

  Widget buttonListType = Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      // ignore: deprecated_member_use
      RaisedButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
            side: const BorderSide(color: Colors.red)),
        onPressed: () {},
        child: buildButtonColumn(color, Icons.format_list_bulleted),
      ),
    ],
  );

  return AppBar(
    backgroundColor: Colors.yellow[300],
    automaticallyImplyLeading: false,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: buttonSection,
        ),
        const Expanded(
          child: Text(
            'sellVN Online',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.red,
              fontSize: 16,
              fontFamily: 'MyFont',
            ),
          ),
        ),
        Expanded(
          child: buttonListType,
        ),
      ],
    ),
  );
}
