import 'package:flutter/material.dart';

class ListBoxNumberLot extends StatelessWidget {
  const ListBoxNumberLot({
    Key key,
    @required this.listNumber,
  }) : super(key: key);
  final List<int> listNumber;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(
            listNumber.length,
            (index) => BoxNumberLot(
              number: listNumber[index],
            ),
          )
        ],
      ),
    );
  }
}

class BoxNumberLot extends StatelessWidget {
  const BoxNumberLot({
    Key key,
    @required this.number,
  }) : super(key: key);

  final int number;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 5),
      child: SizedBox(
        width: 50,
        height: 50,
        child: Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.red,
            shape: BoxShape.circle,
          ),
          alignment: Alignment.center,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Text(
                  number.toString(),
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
