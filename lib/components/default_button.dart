import 'package:flutter/material.dart';
import 'package:what_eat_v2/constants.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key,
    this.text,
    this.press,
  }) : super(key: key);

  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        color: kPrimaryColor,
      ),
    );
  }
}
