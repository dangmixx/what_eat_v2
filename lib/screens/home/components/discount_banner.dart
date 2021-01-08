import 'package:flutter/material.dart';
import 'package:what_eat_v2/screens/random_ot/random_lot_screen.dart';

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
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, RandomLotScreen.routeName);
        },
        child: RichText(
          text: TextSpan(
            text: 'VietLot\n',
            style: TextStyle(color: Colors.white),
            children: [
              TextSpan(
                text: 'Trúng 100%\n',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
