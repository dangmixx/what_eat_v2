import 'package:flutter/material.dart';
import 'package:what_eat_v2/components/default_button.dart';
import 'package:what_eat_v2/screens/home/home_screen.dart';

class LoginSuccessBody extends StatelessWidget {
  const LoginSuccessBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/success.png",
              width: 500,
              height: 500,
            ),
            Text(
              "Login Success",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.black),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              height: 60,
              child: DefaultButton(
                press: () {
                  Navigator.pushNamed(context, HomeScreen.routeName);
                },
                text: "Back to home",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
