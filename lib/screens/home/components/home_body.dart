import 'package:flutter/material.dart';
import 'package:what_eat_v2/models/Product.dart';
import 'package:what_eat_v2/screens/details/details_product.dart';
import 'package:what_eat_v2/screens/home/components/section_title.dart';
import 'category_card.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'product_cart.dart';
import 'special_offers.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 10,
          ),
          HomeHeader(),
          SizedBox(
            height: 10,
          ),
          DiscountBanner(),
          SizedBox(
            height: 30,
          ),
          ListCategories(),
          SizedBox(
            height: 30,
          ),
          SpecialOffers(),
          SizedBox(
            height: 30,
          ),
          Column(
            children: [
              SectionTitle(
                text: 'Popular Product',
                press: () {},
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ...List.generate(
                      demoProducts.length,
                      (index) => ProductCard(
                        product: demoProducts[index],
                        press: () {
                          Navigator.pushNamed(
                            context,
                            DetailsProductScreen.routeName,
                            arguments: ProductDetailArgument(
                              prodcutDetail: demoProducts[index],
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    )
                  ],
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}
