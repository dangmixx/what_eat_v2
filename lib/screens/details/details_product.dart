import 'package:flutter/material.dart';
import 'package:what_eat_v2/models/Product.dart';
import 'package:what_eat_v2/screens/details/components/detail_body.dart';

import 'components/custon_app_bar.dart';

class DetailsProductScreen extends StatelessWidget {
  const DetailsProductScreen({Key key}) : super(key: key);
  static String routeName = "/detail-product";

  @override
  Widget build(BuildContext context) {
    final ProductDetailArgument argument =
        ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: CustomAppBar(argument.prodcutDetail.rating),
      body: DetailProductBody(
        product: argument.prodcutDetail,
      ),
    );
  }
}

class ProductDetailArgument {
  final Product prodcutDetail;

  ProductDetailArgument({@required this.prodcutDetail});
}
