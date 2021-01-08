import 'dart:math';

import 'package:flutter/material.dart';
import 'package:what_eat_v2/components/default_button.dart';
import 'package:what_eat_v2/constants.dart';

import 'number_lot.dart';

class BodyVietLot extends StatelessWidget {
  const BodyVietLot({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            Center(
              child: Text(
                'Ding Ding Ding M*rther F*cker',
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            ContainerResetNumber()
          ],
        ),
      ),
    );
  }
}

class ContainerResetNumber extends StatefulWidget {
  const ContainerResetNumber({
    Key key,
  }) : super(key: key);

  @override
  _ContainerResetNumberState createState() => _ContainerResetNumberState();
}

class _ContainerResetNumberState extends State<ContainerResetNumber> {
  List<List<int>> stackList = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            ...List.generate(
              stackList.length,
              (index) => ListBoxNumberLot(
                listNumber: stackList[index],
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
          child: DefaultButton(
            press: () {
              setState(() {
                stackList = [[]];
              });
            },
            text: 'Rest',
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 150,
                child: DefaultButton(
                  press: () {
                    setState(() {
                      getRandomList(45);
                    });
                  },
                  text: 'Omega 45',
                ),
              ),
              SizedBox(
                width: 150,
                child: DefaultButton(
                  press: () {
                    setState(() {
                      getRandomList(55);
                    });
                  },
                  text: 'Omega 55',
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  void getRandomList(int typeOmega) {
    var listDefault = List.generate(typeOmega, (index) => index + 1);
    List<int> listNumber = [];
    for (var i = 0; i < 6; i++) {
      var rng = new Random().nextInt(typeOmega - i);
      listNumber.add(listDefault.removeAt(rng));
    }

    listNumber.sort();
    stackList.add(listNumber);
  }
}
