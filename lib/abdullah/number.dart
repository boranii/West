import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:west/modules/mynumberisscreen2.dart';
import 'package:west/shared/components/components.dart';

import '../shared/style/colors.dart';
class Mynumber extends StatelessWidget {
  const Mynumber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back,color: Colors.black,),
        title: progress(
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
              phoneform(),
              SizedBox(height: 20,),
              defultButton(
                background: MainColor,
                context: context,
                text: 'Continue',
                  pagename: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => MyNumber2Screen()));
                  }
              ),
              SizedBox(height: 100,),
              Container(
                  child:SvgPicture.asset("assets/num1.svg",)
              ),

            ]),
      ),
    );
  }
}