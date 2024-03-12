import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:west/modules/mynumberisscreen2.dart';

import '../abdullah/comp.dart';
import '../shared/components/components.dart';
import '../shared/style/colors.dart';

class MyNumberScreen extends StatelessWidget {
  const MyNumberScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title:
    progress(
    width: 22.5
      ),
    ),
    body: SingleChildScrollView(
      child: Column(
      children: [
      SizedBox(height: 30,),
      Container(
      child: Text("My Number Is",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize:30),),),
      SizedBox(height: 20,),
      Container(
      width: 340,
        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
        child: Text("We'll need your phone number to send an OTP for verification.",textAlign: TextAlign.center,style: TextStyle(fontSize:16,color: Colors.grey.shade600),),),
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
        SizedBox(height: 20,),
        Container(
        child:SvgPicture.asset("assets/NumberPageLine.svg",)
        ),

        ]),
    ),
  );
  }
}
