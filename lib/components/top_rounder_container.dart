import 'package:flutter/material.dart';

class TopRounderContainer extends StatelessWidget {
  final Widget child;
  final Color color;
  const TopRounderContainer({
    Key key,
    @required this.child,
    this.color = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40), topRight: Radius.circular(40)),
      ),
      child: child,
    );
  }
}
