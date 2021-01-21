import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:what_eat_v2/constants.dart';
import 'package:what_eat_v2/models/Product.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key key,
    @required this.product,
    @required this.pressSeeDetail,
  }) : super(key: key);

  final Product product;
  final GestureTapCallback pressSeeDetail;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            product.title,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            padding: EdgeInsets.all(10),
            width: 50,
            // height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: product.isFavourite ? Colors.red[100] : Colors.grey[200],
            ),
            child: SvgPicture.asset(
              "assets/icons/Heart Icon_2.svg",
              color: product.isFavourite ? Colors.red : Colors.red[100],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 10),
          child: Text(
            product.description,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        GestureDetector(
          onTap: pressSeeDetail,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 10),
            child: Row(
              children: [
                Text(
                  "See more Detail",
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                  color: kPrimaryColor,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
