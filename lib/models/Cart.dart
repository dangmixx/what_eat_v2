import 'package:flutter/cupertino.dart';
import 'package:what_eat_v2/models/Product.dart';

class Cart {
  final Product product;
  final int numOfItems;

  Cart({
    @required this.product,
    @required this.numOfItems,
  });
}

List<Cart> mockupCart = [
  Cart(product: demoProducts[0], numOfItems: 1),
  Cart(product: demoProducts[1], numOfItems: 2),
  Cart(product: demoProducts[2], numOfItems: 3),
];
