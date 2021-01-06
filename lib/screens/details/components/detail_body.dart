import 'package:flutter/material.dart';
import 'package:what_eat_v2/components/default_button.dart';
import 'package:what_eat_v2/components/top_rounder_container.dart';
import 'package:what_eat_v2/models/Product.dart';

import 'product_dot_colors.dart';
import 'product_images.dart';
import 'production_description.dart';

class DetailProductBody extends StatelessWidget {
  final Product product;
  const DetailProductBody({
    Key key,
    @required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductImages(product: product),
        SizedBox(
          height: 20,
        ),
        TopRounderContainer(
          color: Colors.white,
          child: Column(
            children: [
              ProductDescription(
                product: product,
                pressSeeDetail: () {},
              ),
              SizedBox(
                height: 20,
              ),
              TopRounderContainer(
                color: Colors.grey[200],
                child: Column(
                  children: [
                    ProductListColorDots(product: product),
                    SizedBox(
                      height: 20,
                    ),
                    TopRounderContainer(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 20),
                        child: DefaultButton(
                          text: "Add to cart",
                          press: () {},
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
