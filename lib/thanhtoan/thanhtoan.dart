import 'package:app_doan/bottom_nav_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../sanpham/sanphamthanhtoan.dart';
import '../app_bar.dart';

//import 'package:flutter/rendering.dart';
// ignore: unused_element
bool _value = false;
int val = -1;

class ThanhToan extends StatelessWidget {
  const ThanhToan({Key? key}) : super(key: key);
  static String routeName = "/thanhtoan";

  @override
  Widget build(BuildContext context) {
    Widget TongSanPham = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Tổng sản phẩm: ',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        Text(
          '80000 VND',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.red,
            fontSize: 20,
          ),
        ),
      ],
    );

    Widget PhiVanChuyen = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Phí vận chuyển: ',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        Text(
          '10000 VND',
          style: TextStyle(
            fontSize: 15,
          ),
        ),
      ],
    );

    Widget Phuongthucthanhtoan = Column(
      children: [
        ListTile(
          title: Text("Momo"),
          leading: Radio(
            value: 1,
            groupValue: val,
            onChanged: (value) {
              setState(() {
                val = value.toString() as int;
              });
            },
            activeColor: Colors.green,
          ),
        ),
        ListTile(
          title: Text("Khi nhận hàng"),
          leading: Radio(
            value: 1,
            groupValue: val,
            onChanged: (value) {
              setState(() {
                val = value.toString() as int;
              });
            },
            activeColor: Colors.green,
          ),
        ),
      ],
    );

    Widget TongCong = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Tổng cộng: ',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        Text(
          '90000 VND',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.red,
            fontSize: 25,
          ),
        ),
      ],
    );

    return MaterialApp(
      title: 'Món ăn',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //backgroundColor: Colors.yellow[300],
        appBar: homeAppBar(context),
        bottomNavigationBar: Container(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 15),
              primary: Colors.red,
            ),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) => new AlertDialog(
                        title: new Text('Xin chào'),
                        content: new Text(
                            'Bạn đã đặt hàng thành công, vui lòng đợi món ăn sẽ được giao tới.'),
                        actions: <Widget>[
                          new IconButton(
                              icon: new Icon(Icons.close),
                              onPressed: () {
                                Navigator.pop(context);
                              })
                        ],
                      ));
            },
            child: const Text(
              'Xác nhận mua hàng',
              style: TextStyle(fontSize: 28),
            ),
          ),
        ),
        body: ListView(
          children: <Widget>[
            const SizedBox(height: 15.0),
            const Text(
              'Thanh Toán',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.red,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 7.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // ignore: deprecated_member_use
                FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: const BorderSide(color: Colors.red)),
                  color: Colors.white,
                  textColor: Colors.blue,
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  onPressed: () {},
                  child: const Text(
                    "Thay đổi địa chỉ",
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 1, 0, 1),
                  child: Text(
                    '65 Huỳnh Thúc Kháng, P.Bến Nghé, Q.1, Tp.HCM',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            DachSachMonAnThanhToan(),
            SizedBox(height: 5),
            DachSachMonAnThanhToan(),
            SizedBox(height: 30),
            TongSanPham,
            SizedBox(height: 6),
            PhiVanChuyen,
            SizedBox(height: 60),
            TongCong,
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: Text(
                    'Chọn phương thức thanh toán',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: Phuongthucthanhtoan,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void setState(Null Function() value) {}
}
