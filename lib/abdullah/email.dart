import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../shared/componens/comonent.dart';
import '../shared/styles/color.dart';
class Email extends StatelessWidget {
  const Email({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back,color: Colors.black,),
        title: progras(
            width: 88.5
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child:   Column(
          children: [
            SizedBox(height: 20,),
            Container(
              child: Text("Email Address",style: TextStyle(fontWeight: FontWeight.bold,fontSize:30),),),
            SizedBox(height: 20,),
            Container(
              width: 340,
              padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
              child: Text("We'll need your email to stay in touch"),),
            SizedBox(height: 20,),
            inputtext(),
            SizedBox(height: 20,),
            defButton(
              Color: maincolor,
              text: 'continue',ColorText:Colors.white ,
              function: (){

              },),
            SizedBox(height: 240,),
            Container(
                child:SvgPicture.asset("assets/email.svg",)
            ),

          ],
        ),
      ),
    );
  }
}