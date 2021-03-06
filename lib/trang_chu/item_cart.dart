import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class ItemCard extends StatelessWidget {
  final String title, gia, image;
  final Function press;
  const ItemCard({
    Key? key,
    required this.title,
    required this.gia,
    required this.image,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // This size provide you the total height and width of the screen
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(left: 20, right: 15, top: 20, bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 20,
            color: Color(0xFFB0CCE1).withOpacity(0.32),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        // ignore: deprecated_member_use
        child: FlatButton(
          /* onTap: press, */
          onPressed: () {
            Navigator.pushNamed(context, '/chitietsanpham');
          },
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  padding: EdgeInsets.all(25),
                  // decoration: BoxDecoration(
                  //   color: kPrimaryColor.withOpacity(0.13),
                  //   shape: BoxShape.circle,
                  // ),
                  child: Image.asset(
                    image,
                    width: size.width * 0.20,
                    // size.width * 0.18 means it use 18% of total width
                  ),
                ),
                Text(title),
                SizedBox(height: 10),
                Text(
                  gia,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
