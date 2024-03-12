import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:west/shared/components/components.dart';

import '../shared/componens/comonent.dart';
import '../shared/styles/color.dart';
import 'comp.dart';
class Yourname extends StatelessWidget {
  const Yourname({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back,color: Colors.black,),
        title: progras(
            width: 66.5
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child:   Column(
          children: [
            Container(
              child: Text("What’s Your Name ?",style: TextStyle(fontWeight: FontWeight.bold,fontSize:30),),),
            SizedBox(height: 20,),
            Container(
              width: 340,
              padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
              child: Text("Let's Get to Know Each Other"),),
            SizedBox(height: 20,),
            inputtext(),
            SizedBox(height: 20,),
            defButton(
              Color: maincolor,
              text: 'continue',ColorText:Colors.white ,
              function: (){

              },),
            SizedBox(height: 140,),
            Container(
                child:SvgPicture.asset("assets/num.svg",)
            ),

          ],
        ),
      ),
    );
  }
}