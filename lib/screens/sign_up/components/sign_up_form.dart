import 'package:flutter/material.dart';
import 'package:what_eat_v2/components/default_button.dart';
import 'package:what_eat_v2/constants.dart';
import 'package:what_eat_v2/screens/completed_profile/complete_profile_screen.dart';

class SignUpForm extends StatefulWidget {
  SignUpForm({Key key}) : super(key: key);

  @override
  _SignUpForm createState() => _SignUpForm();
}

class _SignUpForm extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  String confirmPassword;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailField(),
          SizedBox(
            height: 20,
          ),
          buildPasswordField(),
          SizedBox(
            height: 20,
          ),
          buildConfirmPasswordField(),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 20,
          ),
          DefaultButton(
            press: () {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();
                Navigator.pushNamed(context, CompleteProfileScreen.routeName);
              }
            },
            text: "Submit",
          ),
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
        ),
      ),
    );
  }

  TextFormField buildPasswordField() {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        password = value;
      },
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
          )),
    );
  }

  TextFormField buildConfirmPasswordField() {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onSaved: (newValue) => confirmPassword = newValue,
      validator: (value) {
        if (password != value) {
          return kMatchPassError;
        }
        return null;
      },
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
      decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: "Re-Enter password",
          labelText: "Confirm password",
          suffixIcon: Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.lock,
              color: kPrimaryColor,
            ),
          )),
    );
  }
}
