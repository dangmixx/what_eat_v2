import 'package:flutter/material.dart';
import 'package:what_eat_v2/models/MenuWhatEat.dart';
import 'components/body_detail_menu.dart';

class DetailMenuScreen extends StatelessWidget {
  const DetailMenuScreen({Key key}) : super(key: key);
  static String routeName = '/detail-menu';
  @override
  Widget build(BuildContext context) {
    final MenuDetailArgument argument =
        ModalRoute.of(context).settings.arguments;
    MenuWhatEat item = getInfoDetailMenuById(argument.menuWhatEat.id);
    print(item.toString());
    return Scaffold(
      appBar: AppBar(),
      body: BodyDetailMenu(
        item: item,
      ),
    );
  }

  MenuWhatEat getInfoDetailMenuById(String id) {
    return listWhatEat.firstWhere((element) => element.id == id);
  }
}

class MenuDetailArgument {
  final MenuWhatEat menuWhatEat;

  MenuDetailArgument({@required this.menuWhatEat});
}
