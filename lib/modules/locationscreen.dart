import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:west/modules/cupidarrowscreen.dart';

import '../shared/components/components.dart';
import '../shared/style/colors.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 80,),
            SvgPicture.asset("assets/Location.svg",),
            TitleText(text: "Upload your photo"),
            HS20(),
            SubTitleText(text: "We'd love to see you. Upload a photo for your dating journey."),
            HS20(),


            defultButton1(
              pagenavigate: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=> CupidScreen()));
              },
              background: MainColor,
              context: context,
              text: 'Allow Location Access',),
            HS20(),
            Text("Enter Location Manually",style: TextStyle(color: MainColor,fontSize: 15,fontWeight: FontWeight.bold),),

            SizedBox(height: 70,),
            
            SvgPicture.asset("assets/AgePage.svg",),
          ],
        ),
      ),
    );
  }
}
