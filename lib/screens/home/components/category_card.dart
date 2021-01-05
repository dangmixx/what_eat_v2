import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:what_eat_v2/size_config.dart';

class ListCategories extends StatelessWidget {
  const ListCategories({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icons/Flash Icon.svg", "text": "Flash Deal"},
      {"icon": "assets/icons/Bill Icon.svg", "text": "Bill"},
      {"icon": "assets/icons/Game Icon.svg", "text": "Game"},
      {"icon": "assets/icons/Gift Icon.svg", "text": "Daily Gift"},
      {"icon": "assets/icons/Discover.svg", "text": "More"},
    ];

    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
            categories.length,
            (index) => CategoryCard(
              icon: categories[index]["icon"],
              text: categories[index]["text"],
              press: () {},
            ),
          )
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key key,
    @required this.text,
    @required this.icon,
    @required this.press,
  }) : super(key: key);
  final String text, icon;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getProportionateScreenWidth(55),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.red[50],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SvgPicture.asset(icon),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              text,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
