import 'package:flutter/material.dart';
import 'package:what_eat_v2/screens/sign_in/components/social_card.dart';
import 'sign_up_form.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "Register account!",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.black),
                ),
                Text(
                  "Complete your detail or continue \n with Social media",
                  textAlign: TextAlign.center,
                ),
                SignUpForm(),
                SizedBox(
                  height: 50,
                ),
                Text("Use Social media:"),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
