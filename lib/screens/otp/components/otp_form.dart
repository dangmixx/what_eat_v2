import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:what_eat_v2/components/default_button.dart';
import 'package:what_eat_v2/screens/home/home_screen.dart';

import '../../../constants.dart';

class OtpForm extends StatefulWidget {
  OtpForm({Key key}) : super(key: key);

  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  FocusNode pinFocus1Node;
  FocusNode pinFocus2Node;
  FocusNode pinFocus3Node;
  final _keyForm = GlobalKey<FormState>();
  var kInputOtpOuline = OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(color: kTextColor));

  @override
  void initState() {
    super.initState();
    pinFocus1Node = FocusNode();
    pinFocus2Node = FocusNode();
    pinFocus3Node = FocusNode();
  }

  @override
  void dispose() {
    pinFocus1Node.dispose();
    pinFocus2Node.dispose();
    pinFocus3Node.dispose();
    super.dispose();
  }

  void nextFocusNode({String value, FocusNode focusNode}) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _keyForm,
      child: Column(children: [
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 60,
              child: TextFormField(
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                ],
                autofocus: true,
                keyboardType: TextInputType.number,
                style: TextStyle(fontSize: 24, color: kPrimaryColor),
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  focusedBorder: kInputOtpOuline,
                  enabledBorder: kInputOtpOuline,
                ),
                onChanged: (value) {
                  nextFocusNode(value: value, focusNode: pinFocus1Node);
                },
              ),
            ),
            SizedBox(
              width: 60,
              child: TextFormField(
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                ],
                focusNode: pinFocus1Node,
                keyboardType: TextInputType.number,
                style: TextStyle(fontSize: 24, color: kPrimaryColor),
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  focusedBorder: kInputOtpOuline,
                  enabledBorder: kInputOtpOuline,
                ),
                onChanged: (value) {
                  nextFocusNode(value: value, focusNode: pinFocus2Node);
                },
              ),
            ),
            SizedBox(
              width: 60,
              child: TextFormField(
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                ],
                focusNode: pinFocus2Node,
                keyboardType: TextInputType.number,
                style: TextStyle(fontSize: 24, color: kPrimaryColor),
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  focusedBorder: kInputOtpOuline,
                  enabledBorder: kInputOtpOuline,
                ),
                onChanged: (value) {
                  nextFocusNode(value: value, focusNode: pinFocus3Node);
                },
              ),
            ),
            SizedBox(
              width: 60,
              child: TextFormField(
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                ],
                focusNode: pinFocus3Node,
                keyboardType: TextInputType.number,
                style: TextStyle(fontSize: 24, color: kPrimaryColor),
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  focusedBorder: kInputOtpOuline,
                  enabledBorder: kInputOtpOuline,
                ),
                onChanged: (value) {
                  pinFocus3Node.unfocus();
                },
              ),
            ),
          ],
        ),
        SizedBox(
          height: 150,
        ),
        DefaultButton(
          text: 'Continue',
          press: () {
            Navigator.pushNamed(context, HomeScreen.routeName);
          },
        )
      ]),
    );
  }
}
