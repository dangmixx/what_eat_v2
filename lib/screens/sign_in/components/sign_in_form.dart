import 'package:flutter/material.dart';
import 'package:what_eat_v2/components/default_button.dart';
import 'package:what_eat_v2/components/form_errors.dart';
import 'package:what_eat_v2/screens/forgot_password/forgot_password_screen.dart';
import 'package:what_eat_v2/screens/login_sucess/login_sucess_screen.dart';

import '../../../constants.dart';

class SignForm extends StatefulWidget {
  SignForm({Key key}) : super(key: key);

  @override
  _SignForm createState() => _SignForm();
}

class _SignForm extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  bool rememberMe = false;
  String email;
  String password;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          buildEmailField(),
          SizedBox(
            height: 15,
          ),
          buildPasswordField(),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Checkbox(
                value: rememberMe,
                activeColor: kPrimaryColor,
                onChanged: (value) {
                  setState(() {
                    rememberMe = value;
                  });
                },
              ),
              Text('Remember me'),
              Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, ForgotPasswordScreen.routeName);
                },
                child: Text(
                  'Forgot password',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
          DefaultButton(
            text: "Login",
            press: () {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();
                Navigator.pushNamed(context, LoginSucessScreen.routeName);
              }
            },
          )
        ],
      ),
    );
  }

  TextFormField buildEmailField() {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      validator: (value) {
        if (value.isEmpty) {
          return kEmailNullError;
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          return kInvalidEmailError;
        }
        return null;
      },
      decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: "Enter your email",
          labelText: "Email",
          suffixIcon: Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.email,
              color: kPrimaryColor,
            ),
          )),
    );
  }

  TextFormField buildPasswordField() {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onSaved: (newValue) => password = newValue,
      validator: (value) {
        if (value.isEmpty) {
          return kPassNullError;
        } else if (value.length < 8) {
          return kShortPassError;
        }

        return null;
      },
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: "Enter your password",
        labelText: "Password",
        suffixIcon: Padding(
          padding: EdgeInsets.only(right: 20),
          child: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
        ),
      ),
    );
  }
}
