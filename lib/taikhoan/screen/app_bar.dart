import 'package:app_doan/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

AppBar homeAppBar(BuildContext context) {
  Color color = Theme.of(context).primaryColor;
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

  Widget buttonSection = Row(
    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      // ignore: deprecated_member_use
      RaisedButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
            side: const BorderSide(color: Colors.red)),
        onPressed: () {
          Navigator.pop(context);
        },
        child: buildButtonColumn(color, Icons.arrow_back),
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
        Spacer()
      ],
    ),
  );
}
