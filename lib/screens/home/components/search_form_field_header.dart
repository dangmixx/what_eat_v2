import 'package:flutter/material.dart';
import 'package:what_eat_v2/constants.dart';
import 'package:what_eat_v2/size_config.dart';

class SearchFormFieldHeader extends StatelessWidget {
  final String hintText;
  const SearchFormFieldHeader({
    Key key,
    this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth * 0.6,
      height: 50,
      // color: Colors.black,
      decoration: BoxDecoration(
          color: Colors.deepOrangeAccent.withOpacity(0.2),
          borderRadius: BorderRadius.circular(20)),
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: hintText,
          prefixIcon: Icon(
            Icons.search,
            color: kPrimaryColor,
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 12),
        ),
      ),
    );
  }
}
