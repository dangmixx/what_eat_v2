import 'package:flutter/material.dart';
import 'package:what_eat_v2/components/rounder_button_icon.dart';
import 'package:what_eat_v2/components/top_rounder_container.dart';
import 'package:what_eat_v2/constants.dart';
import 'package:what_eat_v2/models/Product.dart';

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
                child: ProductListColorDots(product: product),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class ProductListColorDots extends StatefulWidget {
  const ProductListColorDots({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  _ProductListColorDotsState createState() => _ProductListColorDotsState();
}

class _ProductListColorDotsState extends State<ProductListColorDots> {
  @override
  Widget build(BuildContext context) {
    int selectedColorsIndex = 0;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          ...List.generate(
            widget.product.colors.length,
            (index) => ProductColorDot(
              colors: widget.product.colors[index],
              isSelected: selectedColorsIndex == index,
            ),
          ),
          Spacer(),
          RounderButtonIcon(
            icon: Icons.remove,
            press: () {},
          ),
          RounderButtonIcon(
            icon: Icons.add,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class ProductColorDot extends StatelessWidget {
  const ProductColorDot({
    Key key,
    @required this.colors,
    this.isSelected = true,
  }) : super(key: key);

  final Color colors;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      padding: EdgeInsets.all(5),
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        border:
            Border.all(color: isSelected ? kPrimaryColor : Colors.transparent),
        shape: BoxShape.circle,
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: colors,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
