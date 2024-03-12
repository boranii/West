import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:west/modules/dateofbirthscreen.dart';

import '../shared/components/components.dart';
import '../shared/style/colors.dart';

class EmailScreen extends StatelessWidget {
  const EmailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: progress(
            width: 76.5
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Email Address",style: TextStyle(fontWeight: FontWeight.bold,fontSize:30),),
            SizedBox(height: 20,),
            Container(
              width: 340,
              child: Text("We'll need your email to stay in touch",textAlign: TextAlign.center,style: TextStyle(fontSize:16,color: Colors.grey.shade600),),),
            SizedBox(height: 20,),
            textform(),
            SizedBox(height: 20,),
            defultButton(
              background: MainColor,
              context: context,
              text: 'Continue',
                pagename: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => DateOfBirthScreen()));
                }

            ),
            SizedBox(height: 200,),
            Container(
                child:SvgPicture.asset("assets/EmailPage.svg",)
            ),

          ],
        ),
      ),
    );
  }
}
