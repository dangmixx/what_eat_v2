import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:what_eat_v2/constants.dart';
import 'package:what_eat_v2/models/MenuWhatEat.dart';
import 'package:what_eat_v2/screens/detail_menu/components/like_and_dislike_button.dart';

class ItemMenuContainer extends StatelessWidget {
  const ItemMenuContainer({
    Key key,
    @required this.item,
    @required this.press,
  }) : super(key: key);

  final MenuWhatEat item;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
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
            height: 30,
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LikeAndDislikeItem(item: item),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5, right: 15),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(5),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: kPrimaryColor),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Up Vote',
                          style: TextStyle(color: kPrimaryColor),
                        ),
                      ),
                    ),
                  ),
                )
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
      ),
    );
  }
}
