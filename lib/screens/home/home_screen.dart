import 'package:flutter/material.dart';
import 'package:what_eat_v2/screens/home/components/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);
  static String routeName = '/home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeBody(),
    );
  }
}
