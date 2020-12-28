import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SplashContainer extends StatelessWidget {
  final String text;
  final String imgPath;
  const SplashContainer({
    Key key,
    this.text,
    this.imgPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Text(
          "WHAT EAT?",
          style: TextStyle(
              fontSize: getProportionateScreenWidth(36),
              color: kPrimaryColor,
              fontWeight: FontWeight.bold),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
        ),
        Spacer(
          flex: 2,
        ),
        Image.asset(
          imgPath,
          height: getProportionateScreenHeight(256),
          width: getProportionateScreenWidth(235),
        )
      ],
    );
  }
}
