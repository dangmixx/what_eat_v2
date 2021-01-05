import 'package:flutter/material.dart';
import 'package:what_eat_v2/constants.dart';

import 'otp_form.dart';

class OtpBody extends StatelessWidget {
  const OtpBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var builderTimeCountdown = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('This will be expired in '),
        TweenAnimationBuilder(
          tween: Tween(begin: 60.0, end: 0),
          duration: Duration(seconds: 60),
          builder: (context, value, child) => Text(
            "${value.toInt()} second",
            style: TextStyle(color: kPrimaryColor),
          ),
          onEnd: () {
            print("End");
          },
        )
      ],
    );
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
        child: Column(
          children: [
            Text(
              'OTP Verification',
              style: headingStyle,
            ),
            Text('We sent your code to +1900 6969'),
            builderTimeCountdown,
            OtpForm(),
            Spacer(),
            Text('Resend OTP Code'),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
