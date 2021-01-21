import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:what_eat_v2/constants.dart';
import 'package:what_eat_v2/models/Product.dart';
import 'package:what_eat_v2/size_config.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key,
    @required this.press,
    @required this.product,
    this.width = 150,
    this.aspectRetion = 1.02,
  }) : super(key: key);
  final double width, aspectRetion;
  final GestureTapCallback press;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
            // card
            width: getProportionateScreenWidth(width),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              textBaseline: TextBaseline.alphabetic,
              children: [
                AspectRatio(
                  aspectRatio: aspectRetion,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      product.images[0],
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Text(
                  product.title,
                  style: TextStyle(color: Colors.black),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$${product.price}",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: kPrimaryColor),
                    ),
                    Container(
                      padding: EdgeInsets.all(getProportionateScreenWidth(8)),
                      width: getProportionateScreenWidth(28),
                      height: getProportionateScreenWidth(28),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: kSecondaryColor.withOpacity(0.1),
                      ),
                      child: SvgPicture.asset("assets/icons/Heart Icon_2.svg"),
                    )
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
