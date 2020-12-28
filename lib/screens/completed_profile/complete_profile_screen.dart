import 'package:flutter/material.dart';

import 'components/complete_profile_body.dart';

class CompleteProfileScreen extends StatelessWidget {
  const CompleteProfileScreen({Key key}) : super(key: key);
  static String routeName = "/complete_profile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign up"),
      ),
      body: CompleteProfileBody(),
    );
  }
}
