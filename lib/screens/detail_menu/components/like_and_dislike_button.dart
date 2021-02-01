import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:what_eat_v2/models/MenuWhatEat.dart';

class LikeAndDislikeItem extends StatelessWidget {
  const LikeAndDislikeItem({
    Key key,
    @required this.item,
  }) : super(key: key);

  final MenuWhatEat item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: () {},
            child: SvgPicture.asset(
              'assets/icons/Heart Icon_2.svg',
              color: Colors.red,
              height: 25,
              width: 25,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Text(item.likeCounting.toString().trim()),
          SizedBox(
            width: 20,
          ),
          InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: () {},
            child: SvgPicture.asset(
              'assets/icons/broken-heart.svg',
              color: Colors.red,
              height: 25,
              width: 25,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Text(item.dislikeCoutning != 0
              ? item.dislikeCoutning.toString()
              : '0'),
        ],
      ),
    );
  }
}
