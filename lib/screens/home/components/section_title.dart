import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key key,
    @required this.text,
    @required this.press,
  }) : super(key: key);

  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Special for you',
            style: TextStyle(fontSize: 20),
          ),
          GestureDetector(
            onTap: press,
            child: Text(
              'Read more',
              style: TextStyle(fontSize: 12),
            ),
          )
        ],
      ),
    );
  }
}
