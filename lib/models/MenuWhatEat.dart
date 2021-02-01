import 'package:flutter/cupertino.dart';

class MenuWhatEat {
  final String id;
  final String name;
  final String description;
  final String imagePath;
  final List<String> listStep;
  final int likeCounting;
  final int dislikeCoutning;
  final int createAt;
  final bool delete;

  MenuWhatEat({
    this.dislikeCoutning,
    @required this.id,
    @required this.name,
    this.description = '',
    @required this.imagePath,
    @required this.listStep,
    this.likeCounting = 0,
    this.createAt = 0,
    this.delete = false,
  });

  @override
  String toString() {
    // TODO: implement toString
    return 'MenuWhatEat: {id : ${id}, name : ${name}}';
  }
}

List<MenuWhatEat> listWhatEat = [
  MenuWhatEat(
    id: '0001',
    name: 'Mâm cơm healthy ngày Tết',
    imagePath: "assets/thucdon/590-HH-TCC.png",
    listStep: ['Bước một', 'Bước hai'],
    createAt: DateTime.utc(2021, 1, 21).millisecondsSinceEpoch,
    likeCounting: 999,
    dislikeCoutning: 69,
    description: "Man com healthy cho ngay tet",
  ),
  MenuWhatEat(
    id: '0002',
    name: 'Mâm cơm Miền Bắc ngày Tết',
    imagePath: "assets/thucdon/mam-com-tet-1.jpg",
    listStep: ['Bước một', 'Bước hai'],
    createAt: DateTime.utc(2021, 1, 21).millisecondsSinceEpoch,
    likeCounting: 23,
    dislikeCoutning: 0,
  ),
  MenuWhatEat(
    id: '0003',
    name: 'Mâm cơm ngày cho ngày Covid thứ 2',
    imagePath: 'assets/thucdon/mam-com-tet-1.jpg',
    listStep: ['Bước một', 'Bước hai'],
    createAt: DateTime.utc(2021, 1, 21).millisecondsSinceEpoch,
    likeCounting: 69,
    dislikeCoutning: 0,
  ),
  MenuWhatEat(
    id: '0003',
    name: 'Mâm cơm healthy ngày Tết',
    imagePath: 'assets/thucdon/mam-com-tet-healthy.jpg',
    listStep: ['Bước một', 'Bước hai'],
    createAt: DateTime.utc(2021, 1, 21).millisecondsSinceEpoch,
    likeCounting: 14,
    dislikeCoutning: 0,
  ),
];
