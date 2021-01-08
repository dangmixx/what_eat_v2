import 'dart:math';

import 'package:flutter/material.dart';
import 'package:what_eat_v2/constants.dart';

import 'components/body.dart';

class RandomLotScreen extends StatelessWidget {
  const RandomLotScreen({Key key}) : super(key: key);
  static String routeName = '/vietlot';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          'Rating ${getRating()}',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: kPrimaryColor,
          ),
        ),
        centerTitle: true,
      ),
      body: BodyVietLot(),
    ));
  }

  int getRating() {
    var rg = new Random();
    return rg.nextInt(100);
  }
}
