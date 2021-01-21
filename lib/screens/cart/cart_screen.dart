import 'package:flutter/material.dart';
import 'package:what_eat_v2/models/Cart.dart';
import 'package:what_eat_v2/screens/cart/components/cart_body.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key key}) : super(key: key);
  static String routeName = '/cart';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: buildAppBar(context),
        body: CartBody(),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Your cart",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          Text(
            " ${mockupCart.length} items",
            style: TextStyle(
                fontSize: Theme.of(context).textTheme.caption.fontSize),
          ),
        ],
      ),
    );
  }
}
