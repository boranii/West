import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../shared/componens/comonent.dart';
import '../shared/styles/color.dart';
class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:SvgPicture.asset("assets/logo.svg",
          width: 115,
          height: 43,),
      ),
      body: Column(
          children: [
            SizedBox(height: 43,),
            Container(padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
              child: Text("Let’s start with your number",style: TextStyle(fontWeight: FontWeight.bold,fontSize:30),),),
            SizedBox(height: 43,),
            inputphone(),
            SizedBox(height: 20,),
            defButton(
              Color: maincolor,
              text: 'continue',ColorText:Colors.white ,
              function: (){

              },),
            SizedBox(height: 20,),
            Container(child:Text("_OR_"),),
            SizedBox(height: 20,),
            defButton(
              Color: Colors.white,
              text: 'login with fecbook',ColorText:Colors.black ,
              function: (){

              },),
            SizedBox(height: 20,),
            defButton(
              Color: Colors.white,
              text: 'login with Google',ColorText:Colors.black ,
              function: (){

              },),

          ]),

    );
  }
}