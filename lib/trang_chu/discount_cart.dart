import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class DiscountCard extends StatelessWidget {
  const DiscountCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            "Offers & Discounts",
            style: TextStyle(fontWeight: FontWeight.bold, color: kTextColor),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            width: double.infinity,
            height: 166,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              // image: const DecorationImage(
              //   fit: BoxFit.fill,
              //   image: AssetImage("images/beyond-meat-mcdonalds"),
              // ),
            ),
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  colors: [
                    const Color(0xFFFF961F).withOpacity(0.7),
                    kPrimaryColor.withOpacity(0.7),
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Image.asset(
                        'images/logoapp.png',
                        width: 220,
                        height: 220,
                      ),
                    ),
                    Expanded(
                      child: RichText(
                        text: const TextSpan(
                          style: TextStyle(color: Colors.white),
                          children: [
                            TextSpan(
                              text: "Get Discount of \n",
                              style: TextStyle(fontSize: 16),
                            ),
                            TextSpan(
                              text: "30% \n",
                              style: TextStyle(
                                fontSize: 43,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text:
                                  "at sellVN on your first order & Instant cashback",
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
