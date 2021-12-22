import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  const HomeScreen({Key? key}) : super(key: key);
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Card(
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: 'Bạn muốn ăn gì hôm nay?',
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 200.0,
            width: double.infinity,
            child: Carousel(
              dotSize: 4.0, //Kích thước chấm
              dotSpacing: 15.0,
              dotColor: Colors.lightGreenAccent,
              indicatorBgPadding: 5.0,
              dotBgColor: Colors.transparent,
              dotVerticalPadding: 5.0,
              images: [
                InkWell(
                  onTap: () {
                    print('1 Item Click');
                  },
                  child: Image.asset('images/1.jpg', fit: BoxFit.cover),
                ),
                InkWell(
                  onTap: () {
                    print('2 Item Click');
                  },
                  child: Image.asset('images/2.jpg', fit: BoxFit.cover),
                ),
                InkWell(
                  onTap: () {
                    print('3 Item Click');
                  },
                  child: Image.asset('images/3.jpg', fit: BoxFit.cover),
                ),
                InkWell(
                  onTap: () {
                    print('4 Item Click');
                  },
                  child: Image.asset('images/4.jpg', fit: BoxFit.cover),
                ),
                InkWell(
                  onTap: () {
                    print('5 Item Click');
                  },
                  child: Image.asset('images/5.jpg', fit: BoxFit.cover),
                ),
                InkWell(
                  onTap: () {
                    print('6 Item Click');
                  },
                  child: Image.asset('images/6.jpg', fit: BoxFit.cover),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
