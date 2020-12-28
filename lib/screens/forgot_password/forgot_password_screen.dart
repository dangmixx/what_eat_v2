import 'package:flutter/material.dart';

import '../../size_config.dart';
import 'components/body_fw.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static String routeName = "/forgot_password";
  const ForgotPasswordScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Forgot password"),
      ),
      body: BodyFW(),
    );
  }
}
