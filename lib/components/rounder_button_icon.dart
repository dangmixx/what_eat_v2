import 'package:flutter/material.dart';

class RounderButtonIcon extends StatelessWidget {
  const RounderButtonIcon({
    Key key,
    @required this.icon,
    @required this.press,
    this.padding,
  }) : super(key: key);
  final IconData icon;
  final GestureTapCallback press;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 40,
      child: FlatButton(
        padding: padding != null ? padding : EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        color: Colors.white,
        onPressed: press,
        child: Icon(icon),
      ),
    );
  }
}
