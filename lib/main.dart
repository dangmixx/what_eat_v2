import 'package:flutter/material.dart';
import 'package:what_eat_v2/routes.dart';
import 'package:what_eat_v2/screens/home/home_screen.dart';
import 'package:what_eat_v2/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: them(),
      initialRoute: HomeScreen.routeName,
      routes: routes,
    );
  }
}
