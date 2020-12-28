import 'package:flutter/material.dart';

import '../constants.dart';

class FormErrors extends StatelessWidget {
  const FormErrors({
    Key key,
    @required this.errors,
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        errors.length,
        (index) => RowErrorsForm(errors: errors[index]),
      ),
    );
  }
}

class RowErrorsForm extends StatelessWidget {
  const RowErrorsForm({
    Key key,
    @required this.errors,
  }) : super(key: key);

  final String errors;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.error,
          color: kPrimaryColor,
        ),
        SizedBox(
          width: 5,
        ),
        Text(errors)
      ],
    );
  }
}
