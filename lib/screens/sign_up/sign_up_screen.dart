import 'package:flutter/material.dart';
import 'package:what_eat_v2/screens/sign_up/components/sign_up_body.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key key}) : super(key: key);
  static String routeName = '/sing_up';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign up"),
      ),
      body: SignUpBody(),
    );
  }
}
