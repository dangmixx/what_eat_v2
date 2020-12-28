import 'package:flutter/material.dart';
import 'package:what_eat_v2/components/default_button.dart';
import 'package:what_eat_v2/components/form_errors.dart';
import 'package:what_eat_v2/constants.dart';
import 'package:what_eat_v2/screens/completed_profile/complete_profile_screen.dart';

class SignUpForm extends StatefulWidget {
  SignUpForm({Key key}) : super(key: key);

  @override
  _SignUpForm createState() => _SignUpForm();
}

class _SignUpForm extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
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
          FormErrors(
            errors: errors,
          ),
          SizedBox(
            height: 20,
          ),
          DefaultButton(
            press: () {
              if (_formKey.currentState.validate() && errors.length == 0) {
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
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kEmailNullError)) {
          setState(() {
            errors.remove(kEmailNullError);
          });
        } else if (emailValidatorRegExp.hasMatch(value) &&
            errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.remove(kInvalidEmailError);
          });
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kEmailNullError)) {
          setState(() {
            errors.add(kEmailNullError);
          });
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.add(kInvalidEmailError);
          });
          return "";
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
      onSaved: (newValue) => password = newValue,
      validator: (value) {
        if (value.isEmpty && !errors.contains(kPassNullError)) {
          setState(() {
            errors.add(kPassNullError);
          });
          return "";
        } else if (value.length < 8 && !errors.contains(kShortPassError)) {
          setState(() {
            errors.add(kShortPassError);
          });
          return "";
        }

        return null;
      },
      onChanged: (value) {
        password = value;
        if (value.isNotEmpty && errors.contains(kPassNullError)) {
          setState(() {
            errors.remove(kPassNullError);
          });
        } else if (value.length > 8 && errors.contains(kShortPassError)) {
          setState(() {
            errors.remove(kShortPassError);
          });
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
      onSaved: (newValue) => confirmPassword = newValue,
      validator: (value) {
        if (password != confirmPassword && !errors.contains(kMatchPassError)) {
          setState(() {
            errors.add(kMatchPassError);
          });
          return "";
        }
        return null;
      },
      onChanged: (value) {
        confirmPassword = value;
        if (confirmPassword == password && errors.contains(kMatchPassError)) {
          setState(() {
            errors.remove(kMatchPassError);
          });
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
