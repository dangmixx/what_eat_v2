import 'package:flutter/material.dart';
import 'package:what_eat_v2/models/Cart.dart';
import 'package:what_eat_v2/size_config.dart';

class CartBody extends StatelessWidget {
  const CartBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(90),
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey[200],
              ),
              child: Image.asset(
                mockupCart[0].product.images[0],
              ),
            ),
          ),
        )
      ],
    );
  }
}
