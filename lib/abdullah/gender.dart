import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../shared/componens/comonent.dart';
import '../shared/styles/color.dart';
class Gender extends StatelessWidget {
  const Gender({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back,color: Colors.black,),
        title: progras(
            width: 132.5
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child:   Column(
          children: [
            SizedBox(height: 20,),
            Container(
              child: Text("What’s Your Gender?",style: TextStyle(fontWeight: FontWeight.bold,fontSize:30),),),
            SizedBox(height: 20,),
            Container(
              width: 340,
              padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
              child: Text("Tell us about your gender"),),
            SizedBox(height: 30,),
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(100.0),color:maincolor  ),
              child: Column(children: [
                SizedBox(height: 20,),
                Icon(Icons.male,color: iconbackground,size: 70,),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 0, 15, 0),
                  child: Text("Male",style: TextStyle(
                      color:iconbackground)),
                ),
              ]),
            ),
            SizedBox(height: 30,),
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(100.0),color:Colors.white  ),
              child: Column(children: [
                SizedBox(height: 20,),
                Icon(Icons.female,color:Colors.black,size: 70,),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 15, 0),
                  child: Text("Female",style: TextStyle(
                    color:Colors.black,)),
                ),
              ]),
            ),


            SizedBox(height: 50,),
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