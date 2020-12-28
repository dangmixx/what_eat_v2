import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialCard extends StatelessWidget {
  const SocialCard({
    Key key,
    this.pathIcon,
  }) : super(key: key);
  final String pathIcon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('click login Social');
      },
      child: Container(
        padding: EdgeInsets.all(25.0),
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        // width: 50,
        // height: 50,
        decoration:
            BoxDecoration(color: Colors.grey[200], shape: BoxShape.circle),
        child: SvgPicture.asset(
          pathIcon,
          width: 20,
          height: 20,
          // allowDrawingOutsideViewBox: false,
        ),
      ),
    );
  }
}
