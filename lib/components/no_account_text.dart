import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:what_eat_v2/screens/sign_up/sign_up_screen.dart';

import '../constants.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(style: TextStyle(color: Colors.black), children: [
        TextSpan(text: "You dont have any an account"),
        TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.pushNamed(context, SignUpScreen.routeName);
              },
            text: "  Register!",
            style:
                TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold)),
      ]),
    );
  }
}
