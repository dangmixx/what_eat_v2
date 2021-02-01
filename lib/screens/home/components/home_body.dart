import 'package:flutter/material.dart';
import 'package:what_eat_v2/models/MenuWhatEat.dart';
import 'package:what_eat_v2/screens/detail_menu/detail_menu_screen.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'item_menu.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
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
            Column(
              children: [
                ...List.generate(
                  listWhatEat.length,
                  (index) => ItemMenuContainer(
                    item: listWhatEat[index],
                    press: () {
                      Navigator.pushNamed(
                        context,
                        DetailMenuScreen.routeName,
                        arguments: MenuDetailArgument(
                          menuWhatEat: listWhatEat[index],
                        ),
                      );
                    },
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
