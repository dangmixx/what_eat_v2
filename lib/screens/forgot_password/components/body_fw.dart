import 'package:flutter/material.dart';
import 'package:what_eat_v2/components/no_account_text.dart';
import 'forgot_password_form.dart';

class BodyFW extends StatelessWidget {
  const BodyFW({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Forgot password",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              PasswordForm(),
              SizedBox(
                height: 20,
              ),
              NoAccountText(),
            ],
          ),
        ),
      ),
    );
  }
}
