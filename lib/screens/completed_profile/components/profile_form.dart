import 'package:flutter/material.dart';
import 'package:what_eat_v2/components/default_button.dart';
import 'package:what_eat_v2/components/form_errors.dart';
import 'package:what_eat_v2/screens/otp/otp_screen.dart';

import '../../../constants.dart';

class ProfileForm extends StatefulWidget {
  ProfileForm({Key key}) : super(key: key);

  @override
  _ProfileFormState createState() => _ProfileFormState();
}

class _ProfileFormState extends State<ProfileForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  String firstName;
  String lastName;
  String phone;
  String address;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildFirstNameField(),
          SizedBox(
            height: 15,
          ),
          buildLastNameField(),
          SizedBox(
            height: 15,
          ),
          buildAddressField(),
          SizedBox(
            height: 15,
          ),
          buildPhoneField(),
          SizedBox(
            height: 15,
          ),
          FormErrors(errors: errors),
          SizedBox(
            height: 10,
          ),
          DefaultButton(
            press: () {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();
                Navigator.pushNamed(context, OtpScreen.routeName);
              }
            },
            text: "Continue",
          )
        ],
      ),
    );
  }

  void addError(String textError) {
    setState(() {
      errors.add(textError);
    });
  }

  void removeError(String textError) {
    setState(() {
      errors.remove(textError);
    });
  }

  TextFormField buildFirstNameField() {
    return TextFormField(
      keyboardType: TextInputType.name,
      onSaved: (newValue) => firstName = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kFirstNamelNullError)) {
          // removeError(kFirstNamelNullError);
        }
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kFirstNamelNullError)) {
          return kFirstNamelNullError;
        }

        return null;
      },
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: "Your first name",
        labelText: "First Name",
        suffixIcon: Padding(
          padding: EdgeInsets.only(right: 20),
          child: Icon(
            Icons.person,
            color: kPrimaryColor,
          ),
        ),
      ),
    );
  }

  TextFormField buildLastNameField() {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      keyboardType: TextInputType.name,
      onSaved: (newValue) => lastName = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kLastNamelNullError)) {
          removeError(kLastNamelNullError);
        }
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kLastNamelNullError)) {
          // addError(kLastNamelNullError);
          return kLastNamelNullError;
        }

        return null;
      },
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: "Your last name",
        labelText: "Last Name",
        suffixIcon: Padding(
          padding: EdgeInsets.only(right: 20),
          child: Icon(
            Icons.person,
            color: kPrimaryColor,
          ),
        ),
      ),
    );
  }

  TextFormField buildAddressField() {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      keyboardType: TextInputType.streetAddress,
      onSaved: (newValue) => address = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kAddressNullError)) {
          // removeError(kAddressNullError);
        }
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kAddressNullError)) {
          // addError(kAddressNullError);
          return kAddressNullError;
        }

        return null;
      },
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: "Your address",
        labelText: "Address",
        suffixIcon: Padding(
          padding: EdgeInsets.only(right: 20),
          child: Icon(
            Icons.person,
            color: kPrimaryColor,
          ),
        ),
      ),
    );
  }

  TextFormField buildPhoneField() {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      keyboardType: TextInputType.phone,
      onSaved: (newValue) => phone = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPhoneNumberNullError)) {
          // removeError(kPhoneNumberNullError);
        }
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kPhoneNumberNullError)) {
          // addError(kPhoneNumberNullError);
          return kPhoneNumberNullError;
        }
        return null;
      },
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: "Your number phone",
        labelText: "Phone",
        suffixIcon: Padding(
          padding: EdgeInsets.only(right: 20),
          child: Icon(
            Icons.person,
            color: kPrimaryColor,
          ),
        ),
      ),
    );
  }
}
