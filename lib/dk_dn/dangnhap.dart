import 'package:flutter/material.dart';

const image_bg = AssetImage("images/image.jpg");

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, //căn chỉnh cột
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Oeschinen Lake Campground',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Kandersteg, Switzerland',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

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

    Widget textSection = const Padding(
      padding: EdgeInsets.fromLTRB(0, 1, 20, 1),
      child: Text(
        'sellVN',
        style: TextStyle(
          fontSize: 50,
          fontFamily: 'MyFont',
          color: Colors.red,
        ),
        softWrap: true,
      ),
    );

    Widget textSection2 = const Padding(
      padding: EdgeInsets.fromLTRB(50, 1, 1, 60),
      child: Text(
        'Online',
        style: TextStyle(
          fontSize: 50,
          fontFamily: 'MyFont',
          color: Colors.red,
        ),
        softWrap: true,
      ),
    );

    precacheImage(image_bg, context);
    return MaterialApp(
      title: 'Bài tập 1',
      home: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: image_bg,
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: ListView(
            children: [
              buttonSection,
              titleSection,
              Column(
                children: [
                  textSection,
                  Row(
                    children: <Widget>[
                      Image.asset(
                        'images/Logo.png',
                        width: 150,
                        height: 150,
                      ),
                      textSection2,
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

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
          margin: const EdgeInsets.only(left: 10),
        ),
      ],
    );
  }
}
