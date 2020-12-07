import 'package:flutter/material.dart';
import 'package:minor_project/Signup.dart';
import 'package:minor_project/compo/background.dart';
import 'package:minor_project/component/already_have_an_account_acheck.dart';
import 'package:minor_project/component/rounded_button.dart';
import 'package:minor_project/component/rounded_input_field.dart';
import 'package:minor_project/component/rounded_password_field.dart';
import 'package:minor_project/component/text_field_container.dart';
import 'package:minor_project/constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,

  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('LOGIN',style: TextStyle(fontWeight: FontWeight.bold),),
        
        Image.asset('assets/images/undraw_secure_login_pdn4.png',height: size.height*0.35,),

        RoundedInputField(
          hintText: "EMAIL ID",
          onChanged:(value){},
        ),
        RoundedPasswordField(onChanged: (value){},
        ),
        RoundedButton(text: 'LOGIN', press: (){},),

        AlreadyHaveAnAccountCheck(press: (){Navigator.push(context, MaterialPageRoute(builder: (context){return SignUpScreen();},),);},)
      ],
    ),
    );
  }
}







