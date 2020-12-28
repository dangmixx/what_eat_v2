import 'package:flutter/material.dart';

import 'components/login_success_body.dart';

class LoginSucessScreen extends StatelessWidget {
  const LoginSucessScreen({Key key}) : super(key: key);
  static String routeName = "/login_success";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text("Login Success"),
      ),
      body: LoginSuccessBody(),
    );
  }
}
