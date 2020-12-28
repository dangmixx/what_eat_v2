import 'package:flutter/material.dart';
import '../../size_config.dart';
import 'components/body.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key key}) : super(key: key);
  static String routeName = '/sing_in';
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
      ),
      body: BodySignIn(),
    );
  }
}
