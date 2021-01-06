import 'package:flutter/material.dart';
import 'package:what_eat_v2/constants.dart';
import 'package:what_eat_v2/models/Product.dart';
import 'package:what_eat_v2/size_config.dart';

class ProductImages extends StatefulWidget {
  const ProductImages({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  _ProductImagesState createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(240),
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(widget.product.images[selectedIndex]),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(widget.product.images.length,
                (index) => buildSmallPreview(index))
          ],
        )
      ],
    );
  }

  GestureDetector buildSmallPreview(int imgPathId) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = imgPathId;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
        height: getProportionateScreenWidth(60),
        width: getProportionateScreenWidth(60),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            border: Border.all(
                color: selectedIndex == imgPathId
                    ? kPrimaryColor
                    : Colors.transparent)),
        child: Image.asset(widget.product.images[imgPathId]),
      ),
    );
  }
}
