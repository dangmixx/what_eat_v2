import 'package:flutter/material.dart';

import 'icon_button_couting.dart';
import 'search_form_field_header.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SearchFormFieldHeader(
                hintText: "Search...",
              ),
              IconButtonCouting(
                icon: (Icons.shopping_cart_outlined),
                numberCounting: 1,
                press: () {},
              ),
              IconButtonCouting(
                icon: (Icons.notifications_outlined),
                numberCounting: 2,
                press: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
