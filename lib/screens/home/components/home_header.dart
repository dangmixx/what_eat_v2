import 'package:flutter/material.dart';
import 'package:what_eat_v2/screens/cart/cart_screen.dart';

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
                press: () {
                  Navigator.pushNamed(context, CartScreen.routeName);
                },
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
