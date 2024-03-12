import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../shared/components/components.dart';
import '../shared/style/colors.dart';
import 'locationscreen.dart';

class PictureScreen extends StatefulWidget {
  const PictureScreen({Key? key}) : super(key: key);

  @override
  State<PictureScreen> createState() => _PictureScreenState();
}

class _PictureScreenState extends State<PictureScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: progress(
            width: 170.5
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TitleText(text: "Upload your photo"),
            HS20(),
            SubTitleText(text: "We'd love to see you. Upload a photo for your dating journey."),
            HS20(),
            SvgPicture.asset("assets/Picture.svg",),
            SvgPicture.asset("assets/AgePage.svg",),
            defultButton1(
              pagenavigate: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=> LocationScreen()));
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
