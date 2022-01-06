import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      height: 75,
      width: double.infinity,
      // double.infinity means it cove the available width
      decoration: BoxDecoration(
        color: Colors.yellow[300],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 7),
            blurRadius: 20,
            spreadRadius: 4,
            // color: const Color(0xFF6DAED9).withOpacity(0.11),
            color: Colors.grey.withOpacity(1),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: SvgPicture.asset("icons/home.svg"),
            onPressed: () {
              Navigator.pushNamed(context, '/trangchu');
            },
          ),
          IconButton(
            icon: SvgPicture.asset("icons/like.svg"),
            onPressed: () {
              Navigator.pushNamed(context, '/monanyeuthich');
            },
          ),
          IconButton(
            icon: SvgPicture.asset("icons/cart.svg"),
            onPressed: () {
              Navigator.pushNamed(context, '/giohang');
            },
          ),
          IconButton(
            icon: SvgPicture.asset(
              "icons/person1.svg",
              width: 50,
              height: 50,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
