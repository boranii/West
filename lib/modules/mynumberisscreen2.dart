import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pinput/pinput.dart';
import 'package:west/modules/yournamescreen.dart';
import 'package:west/shared/components/components.dart';

import '../shared/style/colors.dart';

class MyNumber2Screen extends StatelessWidget {
  const MyNumber2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
        progress(
            width: 30.5
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
            children: [
              SizedBox(height: 30,),
              Container(
                child: Text("Verification Code",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize:30),),),
              SizedBox(height: 20,),
              Container(
                width: 340,
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Text("Please enter code we just send to",textAlign: TextAlign.center,style: TextStyle(fontSize:16,color: Colors.grey.shade600),),),
              Container(
                width: 340,
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Text("+91 99292 77633",textAlign: TextAlign.center,style: TextStyle(fontSize:16,color: Colors.grey.shade600,fontWeight: FontWeight.bold),),),

              SizedBox(height: 20,),
              Pinput(
                defaultPinTheme: PinTheme(
                  width: 56,
                  height: 56,
                  textStyle: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600),
                  decoration: BoxDecoration(color: Colors.white,
                    border: Border.all(color: Colors.white,width: 4),
                    borderRadius: BorderRadius.circular(100),
                  ),
              ),
              ),
              SizedBox(height: 20,),
              Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Text(
              "Didn’t receive OTP?"
              ,style: TextStyle(
                fontWeight: FontWeight.bold)
              ,),
            GestureDetector(
              onTap:(){},
              child: Text(
                " Resend Code",
                style: TextStyle(
                  decorationColor:MainColor ,
                  decorationThickness: 2
                    ,
                  decoration: TextDecoration.underline,
                    color:MainColor,fontWeight: FontWeight.bold)
                ,)
              ,)

          ],

        ),
              SizedBox(height: 20,),
              defultButton(
                background: MainColor,
                context: context,
                text: 'Verify',
                  pagename: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => YourNameScreen()));
                  }

              ),
              SizedBox(height: 60,),

              Container(
                  child:SvgPicture.asset("assets/OTPPage.svg",)
              ),

            ]),
      ),
    );
  }
}
