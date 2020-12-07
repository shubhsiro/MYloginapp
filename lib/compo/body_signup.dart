import 'package:flutter/material.dart';
import 'package:minor_project/component/already_have_an_account_acheck.dart';
import 'package:minor_project/component/rounded_button.dart';
import 'package:minor_project/component/rounded_input_field.dart';
import 'package:minor_project/login_screen.dart';

import 'background_signup.dart';

class Body extends StatelessWidget {
  final Widget child;
  const Body({Key key,
    @required this.child,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Background(child:
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('SignUp',style: TextStyle(fontWeight: FontWeight.bold),),
        Image.asset('assets/images/signup.png',height: size.height*0.25,),
        RoundedInputField(
          hintText: "Name",
          onChanged: (value){},
        ),
        RoundedInputField(
          hintText: "Email Id",
          onChanged: (value){},
        ),
        RoundedInputField(
          hintText: 'Mobile Number',
          onChanged: (value){},
        ),
        RoundedButton(
          text: "SIGN UP",
          press: (){},
        ),
        AlreadyHaveAnAccountCheck(
          login: false,
          press: (){Navigator.push(context, MaterialPageRoute(builder: (context){return LoginScreen();},),);},
        )

      ],
    ),
    );
  }
}

