import 'package:flutter/material.dart';
import 'package:minor_project/constants.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyHaveAnAccountCheck({
    Key key,
    this.login=true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(login ?"Don't Have An Account?": "Already Have An Account?",
          style: TextStyle(color: kPrimaryColor),),
        GestureDetector(
          onTap: press,
          child: Text(
            login ?' Sign Up': 'Sign In',style: TextStyle(color: kPrimaryColor,fontWeight: FontWeight.bold),
          ),
        ),
      ],//row children
    );
  }
}
