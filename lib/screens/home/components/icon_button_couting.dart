import 'package:flutter/material.dart';
import 'package:what_eat_v2/constants.dart';

class IconButtonCouting extends StatelessWidget {
  final IconData icon;
  final int numberCounting;
  final Function press;
  const IconButtonCouting({
    Key key,
    this.icon,
    this.numberCounting,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(100),
      onTap: press,
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: kPrimaryColor.withOpacity(0.2),
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: kPrimaryColor,
            ),
          ),
          if (numberCounting != 0)
            Positioned(
              top: -3,
              right: 0,
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    numberCounting.toString(),
                    style: TextStyle(color: Colors.white, height: 1),
                    textAlign: TextAlign.center,
                  ),
                  heightFactor: 20,
                  widthFactor: 20,
                ),
              ),
            )
        ],
      ),
    );
  }
}
