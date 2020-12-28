import 'package:flutter/material.dart';
import 'package:what_eat_v2/constants.dart';
import 'package:what_eat_v2/screens/sign_in/sign-in_screen.dart';

import '../../../components/default_button.dart';
import 'splash_content.dart';

class BodySplash extends StatefulWidget {
  BodySplash({Key key}) : super(key: key);

  @override
  _BodySplash createState() => _BodySplash();
}

class _BodySplash extends State<BodySplash> {
  int currentIndex = 0;
  List<Map<String, String>> dataSplash = [
    {"imgPath": 'assets/images/splash_1.png', "text": 'Welcome to What Eat!'},
    {"imgPath": 'assets/images/splash_2.png', "text": 'Help you choosen foods'},
    {"imgPath": 'assets/images/splash_3.png', "text": 'Haha'}
  ];
  PageController _pageController = PageController();

  void nextPage() {
    if (_pageController.page.toInt() == dataSplash.length - 1) {
      Navigator.pushNamed(context, SignInScreen.routeName);
    } else {
      _pageController.animateToPage(_pageController.page.toInt() + 1,
          duration: Duration(milliseconds: 400), curve: Curves.easeIn);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
                flex: 3,
                child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: (value) {
                    setState(() {
                      currentIndex = value;
                    });
                  },
                  itemCount: dataSplash.length,
                  itemBuilder: (context, index) => SplashContainer(
                    imgPath: dataSplash[index]['imgPath'],
                    text: dataSplash[index]['text'],
                  ),
                )),
            Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Column(
                    children: <Widget>[
                      Spacer(),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate((dataSplash.length),
                              (index) => buildDot(index: index))),
                      Spacer(
                        flex: 3,
                      ),
                      DefaultButton(
                        press: nextPage,
                        text: currentIndex == (dataSplash.length - 1)
                            ? "Go"
                            : "Continute",
                      ),
                      Spacer(),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5, top: 10),
      height: 8,
      width: currentIndex == index ? 20 : 8,
      decoration: BoxDecoration(
          color: currentIndex == index ? kPrimaryColor : Colors.grey,
          borderRadius: BorderRadius.circular(8)),
    );
  }
}
