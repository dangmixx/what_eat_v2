import 'package:flutter/material.dart';
import 'package:what_eat_v2/models/MenuWhatEat.dart';
import 'discount_banner.dart';
import 'home_header.dart';

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

class ItemMenuContainer extends StatelessWidget {
  const ItemMenuContainer({
    Key key,
    @required this.item,
  }) : super(key: key);

  final MenuWhatEat item;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Column(
            children: [
              SizedBox(
                child: AspectRatio(
                  aspectRatio: 3 / 2,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    child: Image.asset(
                      item.imagePath,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    item.name,
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 20),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    item.description,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 15,
          child: Container(
            decoration: BoxDecoration(color: Colors.grey[100]),
          ),
        )
      ],
    );
  }
}
