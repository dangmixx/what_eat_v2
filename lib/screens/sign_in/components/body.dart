import 'package:flutter/material.dart';
import 'package:what_eat_v2/components/no_account_text.dart';

import 'package:what_eat_v2/size_config.dart';

import 'sign_in_form.dart';
import 'social_card.dart';

class BodySignIn extends StatelessWidget {
  const BodySignIn({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Text(
                  'Welcome back',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: getProportionateScreenWidth(28),
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Sign in with your email and password \nor continue with social media',
                  style: TextStyle(
                      color: Colors.black,
                      // fontSize: getProportionateScreenWidth(28),
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SignForm(),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(
                      pathIcon: 'assets/icons/google-icon.svg',
                    ),
                    SocialCard(
                      pathIcon: 'assets/icons/facebook-2.svg',
                    ),
                    SocialCard(
                      pathIcon: 'assets/icons/twitter.svg',
                    ),
                  ],
                ),
                NoAccountText()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
