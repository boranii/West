import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:west/modules/interestscreen.dart';

import '../shared/components/components.dart';
import '../shared/style/colors.dart';

class LookingForScreen extends StatefulWidget {
  const LookingForScreen({Key? key}) : super(key: key);

  @override
  State<LookingForScreen> createState() => _LookingForScreenState();
}
int chosen=2;
class _LookingForScreenState extends State<LookingForScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: progress(
            width: 106.5
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TitleText(text: "I am Looking for..."),
            HS20(),
            SubTitleText(text: "Provide us with further insights into your preferences"),
            HS20(),
            RadioButton(w:170,text: "A relationship", chosenicon: "assets/UnChosenRadio.svg", bordercolor: Colors.white),
            HS20(),
            RadioButton(w:143,text: "Somthing casual", chosenicon: "assets/ChosenRadio.svg", bordercolor: MainColor),
            HS20(),
            RadioButton(w:155,text: "I’m not sure yet", chosenicon: "assets/UnChosenRadio.svg", bordercolor: Colors.white),
            HS20(),
            RadioButton(w:145,text: "Prefer not to say", chosenicon: "assets/UnChosenRadio.svg", bordercolor: Colors.white),
            SizedBox(height: 50,),
            SvgPicture.asset("assets/AgePage.svg",),
            defultButton1(
              pagenavigate: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> InterestScreen()));
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
