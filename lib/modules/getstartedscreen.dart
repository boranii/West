import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:west/modules/loginscreen.dart';
import 'package:west/modules/splashscreen.dart';

import '../shared/components/components.dart';
import '../shared/style/colors.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithLogo(),
      body: Column(

        children: [
          Container(
            width: double.infinity,
            height:367,
            child: Image.asset("assets/Mask group.png",),
          ),
          Container(width:350,
              child: Text("Discover Love where your story begins.",
                textAlign: TextAlign.center ,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
          ),
          SizedBox(height: 10,),
          Container(width:250,
            child: Text("Join us to discover your ideal partner and ignite the sparks of romance in your journey.",
              textAlign: TextAlign.center ,
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ),
          SizedBox(height: 10,),
          primaryButton(background: MainColor, logo: "assets/PhoneLogo.svg",context:context,text:"Login with Phone"  , pagename: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
          },),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Text(
                "Don’t have an account?"
                ,style: TextStyle(
                  fontWeight: FontWeight.bold)
                ,),
              SignUp(),

            ],

          ),
        ],
      ),
      
    );
  }
}
