import 'package:flutter/material.dart';
import 'package:what_eat_v2/screens/splash/components/body.dart';
import 'package:what_eat_v2/size_config.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key key}) : super(key: key);

  static String routeName = "/splash";

  @override
  Widget build(BuildContext context) {
    // Get init SizeConfig when page start
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        body: BodySplash(),
      ),
    );
  }
}
