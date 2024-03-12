import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:west/modules/lookingforscreen.dart';

import '../shared/components/components.dart';
import '../shared/style/colors.dart';
import 'loginscreen.dart';

class GenderScreen extends StatefulWidget {
  const GenderScreen({Key? key}) : super(key: key);

  @override
  State<GenderScreen> createState() => _GenderScreenState();
}
bool isMale = true;
class _GenderScreenState extends State<GenderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: progress(
            width: 96.5
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TitleText(text: "What’s Your Gender?"),
            SizedBox(height: 20,),
            SubTitleText(text: "Tell us about your gender"),
            SizedBox(height: 20,),
            Container(
              height: 350,
              width: 250,
              child: Column(
                children: [
                  GestureDetector(
                      onTap:(){
                        setState(() {
                          isMale=true;
                        });
                      },
                      child: GenderButton(
                          gender: "Male",
                          gendericon: "assets/Male.svg",
                          color: isMale ?Colors.white :Colors.black,
                          background: isMale ?MainColor :IconBackground,
                      ),
                  ),
                  SizedBox(height: 20,),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        isMale=false;
                      });
                    },
                    child: GenderButton(
                        gender: "Female",
                        gendericon: "assets/Female.svg",
                        color: isMale ?Colors.black :Colors.white,
                        background: isMale ? IconBackground:MainColor,
                    ),
                  ),
                ],
              ),

            ),
            SvgPicture.asset("assets/AgePage.svg",),
            defultButton1(
              pagenavigate: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> LookingForScreen()));
              },
              background: MainColor,
              context: context,
              text: 'Continue',),

          ],
        ),
      ),
    );
  }
}
