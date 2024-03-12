import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../shared/componens/comonent.dart';
import '../shared/styles/color.dart';
class Datebrith extends StatelessWidget {
  const Datebrith({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back,color: Colors.black,),
        title: progras(
            width: 110.5
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child:   Column(
          children: [
            SizedBox(height: 20,),
            Container(
              child: Text("How old are you?",style: TextStyle(fontWeight: FontWeight.bold,fontSize:30),),),
            SizedBox(height: 20,),
            Container(
              width: 340,
              padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
              child: Text("Please provide your age in years"),),


            SizedBox(height: 400,),
            Container(
                child:SvgPicture.asset("assets/gender.svg",)
            ),
            SizedBox(height: 30,),
            defButton(
              Color: maincolor,
              text: 'continue',ColorText:Colors.white ,
              function: (){

              },),

          ],
        ),
      ),
    );
  }
}