import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

import '../shared/components/components.dart';
import '../shared/style/colors.dart';

class CupidScreen extends StatefulWidget {
  const CupidScreen({Key? key}) : super(key: key);

  @override
  State<CupidScreen> createState() => _CupidScreenState();
}



class _CupidScreenState extends State<CupidScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading:SvgPicture.asset("assets/Drawer.svg",height: 20,width: 20,) ,
        title: SvgPicture.asset("assets/LogoWithName.svg",height: 43,width: 115,),
        actions: [
        SvgPicture.asset("assets/Filter.svg",height: 42,width: 42,),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  WS10(),
                  Column(
                    children: [
                  Container(child: Image.asset("assets/photo.jpg"),),
                      Text("Add Story"),
              ]

                  ),
                  WS10(),
                  Column(
                      children: [
                        Container(child: Image.asset("assets/photo.jpg"),),
                        Text("Jessica"),
                      ]

                  ),
                  WS10(),
                  Column(
                      children: [
                        Container(child: Image.asset("assets/photo.jpg"),),
                        Text("Samatha"),
                      ]

                  ),
                  WS10(),
                  Column(
                      children: [
                        Container(child: Image.asset("assets/photo.jpg"),),
                        Text("Sara"),
                      ]

                  ),
                  WS10(),
                  Column(
                      children: [
                        Container(child: Image.asset("assets/photo.jpg"),),
                        Text("Nicole"),
                      ]

                  ),

                ],
              ),
            ),
            Image.asset("assets/Group 910@2x.jpg",height: 300,width: 330,),
            HS20(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Container(
                    decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(100)),
                    height: 60,
                    width: 60,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Icon(Icons.close,color: MainColor,weight: 25,),
                  ),
                ),
                WS20(),
                Container(
                  child: Container(
                    decoration: BoxDecoration(color:MainColor,borderRadius: BorderRadius.circular(100)),
                    height: 80,
                    width: 80,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Icon(Icons.thumb_up,color: Colors.white,weight: 25,size: 40,),
                  ),
                ),
                WS20(),
                Container(
                  child: Container(
                    decoration: BoxDecoration(color:StarButtonBack,borderRadius: BorderRadius.circular(100)),
                    height: 60,
                    width: 60,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Icon(Icons.star,color: Colors.white,weight: 25,),
                  ),
                ),
              ],
            )

          ],
        ),
      ),
    );
  }
}
