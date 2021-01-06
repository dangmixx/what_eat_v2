import 'package:flutter/material.dart';
import 'package:what_eat_v2/components/rounder_button_icon.dart';
import 'package:what_eat_v2/constants.dart';

class CustomAppBar extends PreferredSize {
  final double ratingStart;

  CustomAppBar(this.ratingStart);
  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RounderButtonIcon(
              icon: Icons.arrow_back_ios,
              press: () {
                Navigator.pop(context);
              },
              padding: EdgeInsets.only(left: 5),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40), color: Colors.white),
              child: Row(
                children: [
                  Text(
                    ratingStart.toString(),
                    style: TextStyle(
                        color: kPrimaryColor, fontWeight: FontWeight.w700),
                  ),
                  Icon(
                    Icons.star,
                    size: 15,
                    color: kPrimaryColor,
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
