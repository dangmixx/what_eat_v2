import 'package:flutter/material.dart';
import 'package:what_eat_v2/models/MenuWhatEat.dart';
import 'package:what_eat_v2/screens/detail_menu/components/like_and_dislike_button.dart';

class BodyDetailMenu extends StatelessWidget {
  const BodyDetailMenu({Key key, @required this.item}) : super(key: key);
  final MenuWhatEat item;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.5,
              child: Image.asset(item.imagePath),
            ),
            LikeAndDislikeItem(
              item: item,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.name,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
