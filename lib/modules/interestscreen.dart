import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:west/modules/locationscreen.dart';
import 'package:west/modules/picturescreen.dart';

import '../shared/components/components.dart';
import '../shared/style/colors.dart';

class InterestScreen extends StatefulWidget {
  const InterestScreen({Key? key}) : super(key: key);

  @override
  State<InterestScreen> createState() => _InterestScreenState();
}

class _InterestScreenState extends State<InterestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: progress(
            width: 136.5
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TitleText(text: "Select up to 3 interest"),
            HS20(),
            SubTitleText(text: "Tell us what piques your curiosity and passions"),
            HS20(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MulipleButton(background: MainColor,icon: "assets/Book.svg",text: "Reading",textcolor: Colors.white),
                WS20(),
                MulipleButton(background: IconBackground,icon: "assets/Politics.svg",text: "Politics",textcolor: Colors.black),
              ],
            ),
            HS20(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MulipleButton(background: IconBackground,icon: "assets/Book.svg",text: "Reading",textcolor: Colors.black),
                WS10(),
                MulipleButton(background: MainColor,icon: "assets/Book.svg",text: "Reading",textcolor: Colors.white),
                WS10(),
                MulipleButton(background: IconBackground,icon: "assets/Book.svg",text: "Reading",textcolor: Colors.black),
              ],
            ),
            HS20(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MulipleButton(background: MainColor,icon: "assets/music.svg",text: "Music",textcolor: Colors.white),
                WS20(),
                MulipleButton(background: IconBackground,icon: "assets/Vector-1.svg",text: "Fashion",textcolor: Colors.black),
              ],
            ),
            HS20(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MulipleButton(background: IconBackground,icon: "assets/music.svg",text: "Music",textcolor: Colors.black),
                WS10(),
                MulipleButton(background: IconBackground,icon: "assets/Photography.svg",text: "Phtogrphy",textcolor: Colors.black),
                WS10(),
                MulipleButton(background: IconBackground,icon: "assets/Plane.svg",text: "Travel",textcolor: Colors.black),
              ],
            ),
            HS20(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MulipleButton(background: MainColor,icon: "assets/Book.svg",text: "Reading",textcolor: Colors.white),
                WS20(),
                MulipleButton(background: IconBackground,icon: "assets/Game.svg",text: "Gaming",textcolor: Colors.black),
              ],
            ),

            SizedBox(height: 50,),
            SvgPicture.asset("assets/PreferencePage.svg",),
            defultButton1(
              pagenavigate: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=> PictureScreen()));
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
