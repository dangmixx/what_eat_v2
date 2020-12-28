import 'package:flutter/material.dart';
import '../../../constants.dart';
import 'profile_form.dart';

class CompleteProfileBody extends StatelessWidget {
  const CompleteProfileBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Column(
            children: [
              Text(
                "Complete Profile",
                style: textStyleHeader(),
              ),
              Text("Complete your detail account."),
              SizedBox(
                height: 15,
              ),
              ProfileForm(),
            ],
          ),
        ),
      ),
    );
  }
}
