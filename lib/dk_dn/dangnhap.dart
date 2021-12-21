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
      padding: EdgeInsets.fromLTRB(10, 1, 1, 10),
      child: Text(
        'My Account',
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
        hintText: 'Enter your email...',
        contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    Widget password = TextFormField(
      autofocus: false,
      initialValue: '',
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Enter your password...',
        contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    precacheImage(image_bg, context);
    return MaterialApp(
      title: 'Bài tập 1',
      home: Scaffold(
        backgroundColor: Colors.yellow[300], //,
        body: ListView(
          children: [
            buttonSection,
            Column(
              children: [
                Image.asset(
                  'images/logoapp.png',
                  width: 220,
                  height: 220,
                ),
                textSection2,
                const SizedBox(height: 10.0),
                username,
                const SizedBox(height: 10.0),
                password,
                const SizedBox(height: 10.0),
                const Text(
                  'Hoặc đăng nhập qua',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    backgroundColor: Colors.white,
                  ),
                ),
              ],
            ),
          ],
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
