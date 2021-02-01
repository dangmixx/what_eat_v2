import 'package:flutter/cupertino.dart';

class MenuWhatEat {
  final String id;
  final String name;
  final String description;
  final String imagePath;
  final List<String> listStep;
  final int likeCounting;
  final int createAt;
  final bool delete;

  MenuWhatEat({
    @required this.id,
    @required this.name,
    this.description = '',
    @required this.imagePath,
    @required this.listStep,
    this.likeCounting = 0,
    this.createAt = 0,
    this.delete = false,
  });
}

List<MenuWhatEat> listWhatEat = [
  MenuWhatEat(
    id: '0001',
    name: 'Mâm cơm healthy ngày Tết',
    imagePath: "assets/thucdon/mam-com-tet-healthy.jpg",
    listStep: ['Bước một', 'Bước hai'],
    createAt: DateTime.utc(2021, 1, 21).millisecondsSinceEpoch,
    likeCounting: 20,
    description: "Man com healthy cho ngay tet",
  ),
  MenuWhatEat(
    id: '0002',
    name: 'Mâm cơm Miền Bắc ngày Tết',
    imagePath: "assets/images/ps4_console_white_1.png",
    listStep: ['Bước một', 'Bước hai'],
    createAt: DateTime.utc(2021, 1, 21).millisecondsSinceEpoch,
    likeCounting: 23,
  ),
  MenuWhatEat(
    id: '0003',
    name: 'Mâm cơm ngày cho ngày Covid thứ 2',
    imagePath: 'assets/thucdon/mam-com-tet-1.jpg',
    listStep: ['Bước một', 'Bước hai'],
    createAt: DateTime.utc(2021, 1, 21).millisecondsSinceEpoch,
    likeCounting: 69,
  ),
  MenuWhatEat(
    id: '0003',
    name: 'Mâm cơm healthy ngày Tết',
    imagePath: 'assets/thucdon/mam-com-tet-healthy.jpg',
    listStep: ['Bước một', 'Bước hai'],
    createAt: DateTime.utc(2021, 1, 21).millisecondsSinceEpoch,
    likeCounting: 14,
  ),
];
