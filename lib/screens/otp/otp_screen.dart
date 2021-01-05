import 'package:flutter/material.dart';
import 'package:what_eat_v2/screens/otp/components/otp_body.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key key}) : super(key: key);
  static String routerName = "/otp_confirm";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OTP Verification'),
        leading: SizedBox(),
      ),
      body: OtpBody(),
    );
  }
}
