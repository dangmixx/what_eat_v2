import 'package:flutter/material.dart';
import 'package:what_eat_v2/components/rounder_button_icon.dart';
import 'package:what_eat_v2/constants.dart';
import 'package:what_eat_v2/models/Product.dart';

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
  int selectedColorsIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          ...List.generate(
            widget.product.colors.length,
            (index) => GestureDetector(
              child: ProductColorDot(
                colors: widget.product.colors[index],
                isSelected: selectedColorsIndex == index,
              ),
              onTap: () {
                setState(() {
                  selectedColorsIndex = index;
                });
              },
            ),
          ),
          Spacer(),
          RounderButtonIcon(
            icon: Icons.remove,
            press: () {},
          ),
          SizedBox(
            width: 20,
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
      margin: EdgeInsets.only(right: 10),
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
