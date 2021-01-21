import 'package:flutter/material.dart';
import 'package:what_eat_v2/models/Cart.dart';
import 'package:what_eat_v2/size_config.dart';

class CartBody extends StatelessWidget {
  const CartBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            ...List.generate(
              mockupCart.length,
              (index) => DetailItemOnCart(
                product: mockupCart[index],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DetailItemOnCart extends StatelessWidget {
  const DetailItemOnCart({
    @required this.product,
    Key key,
  }) : super(key: key);
  final Cart product;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Row(
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
                    product.product.images[0],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.product.title,
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 20),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      product.product.description,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
