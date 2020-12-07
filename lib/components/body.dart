import 'package:flutter/material.dart';
import 'package:minor_project/component/rounded_button.dart';

import 'package:minor_project/components/background.dart';
import 'package:minor_project/constants.dart';
import 'package:minor_project/login_screen.dart';

import '../Signup.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;  //total height and width of screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Parking Management System',style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.height*0.03),
          Image.asset("assets/images/car.png",height: size.height*0.45,),
          SizedBox(height: size.height*0.05),
          RoundedButton(
            text: "LOGIN",
            press: (){Navigator.push(context,MaterialPageRoute(builder: (context){return LoginScreen();},),);},
          ),
          RoundedButton(
            text: "SIGNUP",
            color: kPrimaryLightColor,
            textColor: Colors.black,
            press: (){Navigator.push(context, MaterialPageRoute(builder: (context){return SignUpScreen();},),);}
          ),
        ], //children widget
    ),
      ),);
  }
}



