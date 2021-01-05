import 'package:flutter/material.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // height: 90,
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.redAccent,
        borderRadius: BorderRadius.circular(20),
      ),
      child: RichText(
        text: TextSpan(
          text: 'Summer Sale\n',
          style: TextStyle(color: Colors.white),
          children: [
            TextSpan(
              text: 'Discount 49%\n',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
