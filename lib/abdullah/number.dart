import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../shared/componens/comonent.dart';
import '../shared/styles/color.dart';
class Mynumber extends StatelessWidget {
  const Mynumber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back,color: Colors.black,),
        title: progras(
            width: 22.5
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(

            children: [
              SizedBox(height: 30,),
              Container(
                child: Text("My Number Is",style: TextStyle(fontWeight: FontWeight.bold,fontSize:30),),),
              SizedBox(height: 20,),
              Container(
                width: 340,
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Text("We'll need your phone number to send an OTP for verification.",style: TextStyle(fontSize:15),),),
              SizedBox(height: 20,),
              inputphone(),
              SizedBox(height: 20,),
              defButton(
                Color: maincolor,
                text: 'continue',ColorText:Colors.white ,
                function: (){

                },),
              SizedBox(height: 100,),
              Container(
                  child:SvgPicture.asset("assets/num1.svg",)
              ),

            ]),
      ),
    );
  }
}