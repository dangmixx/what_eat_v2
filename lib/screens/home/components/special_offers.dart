import 'package:flutter/material.dart';
import 'package:what_eat_v2/size_config.dart';

import 'section_title.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: "Special for you",
          press: () {},
        ),
        SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOffterCart(
                categoryName: "Smart Phones",
                image: "assets/images/Image Banner 2.png",
                numberOfBrand: 10,
                press: () {},
              ),
              SpecialOffterCart(
                categoryName: "Fashions",
                image: "assets/images/Image Banner 3.png",
                numberOfBrand: 20,
                press: () {},
              ),
              SizedBox(
                width: 20,
              )
            ],
          ),
        )
      ],
    );
  }
}

class SpecialOffterCart extends StatelessWidget {
  const SpecialOffterCart({
    Key key,
    this.categoryName,
    this.image,
    this.numberOfBrand,
    this.press,
  }) : super(key: key);

  final String categoryName, image;
  final int numberOfBrand;

  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: getProportionateScreenWidth(242),
          height: getProportionateScreenHeight(100),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withOpacity(0.2),
                        Colors.white.withOpacity(0.2)
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: RichText(
                    text: TextSpan(
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                              text: '$categoryName\n',
                              style: TextStyle(fontSize: 18)),
                          TextSpan(
                              text: '$numberOfBrand brands',
                              style: TextStyle(fontSize: 14)),
                        ]),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
