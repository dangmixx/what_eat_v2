import 'package:flutter/material.dart';
import 'package:what_eat_v2/components/default_button.dart';
import 'package:what_eat_v2/components/form_errors.dart';
import 'package:what_eat_v2/constants.dart';

class PasswordForm extends StatefulWidget {
  PasswordForm({Key key}) : super(key: key);

  @override
  _PasswordFormState createState() => _PasswordFormState();
}

class _PasswordFormState extends State<PasswordForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  String email;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailField(),
          SizedBox(
            height: 5,
          ),
          FormErrors(errors: errors),
          SizedBox(
            height: 10,
          ),
          DefaultButton(
            text: "Submit",
            press: () {
              if (_formKey.currentState.validate() && errors.length != 0) {}
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
        if (value.isEmpty && !errors.contains(kEmailNullError)) {
          return kEmailNullError;
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            value.isNotEmpty &&
            !errors.contains(kInvalidEmailError)) {
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
}
