import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:west/modules/loginscreen.dart';

import '../style/colors.dart';

Widget primaryButton ({
     required Function() pagename,
     required Color background,
     Color textcolor=Colors.white,
     required String logo,
     dynamic context,
     required String text,
     double width=270,

  }) =>Container(
        decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(
      50.0),
      ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        width: width,
        height: 50,
        child:MaterialButton(
        elevation: 0.0,
        color: background,
        onPressed:pagename,
        child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children:[
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
          child: SvgPicture.asset(logo,width: 40,height: 40),
        ),
        SizedBox(width: 40,),
        Text(text,style: TextStyle(color: textcolor,fontSize: 15),),
        ],
        ),
        ),
  );


Widget defultButton ({
  required Function() pagename,
  required Color background,
  dynamic context,
  required String text

}) =>Container(
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(
        50.0),
  ),
  clipBehavior: Clip.antiAliasWithSaveLayer,
  width: 320,
  height: 50,
  child:MaterialButton(
    elevation: 0.0,
    color: background,
    onPressed:pagename ,
    child: Text(text,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight:FontWeight.w500),
  ),)
);


Widget defultButton1 ({
  required Function() pagenavigate,
  required Color background,
  dynamic context,
  required String text

}) =>Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(
          50.0),
    ),
    clipBehavior: Clip.antiAliasWithSaveLayer,
    width: 320,
    height: 50,
    child:MaterialButton(
      elevation: 0.0,
      color: background,
      onPressed: pagenavigate ,
      child: Text(text,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight:FontWeight.w500),
      ),)
);





Widget phoneform({

  double? width,

}) =>
    Container(
        width:325,
        child:IntlPhoneField(
          cursorColor: Colors.white,

          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            labelText: 'Enter Phone Number',
            border: OutlineInputBorder(
              borderSide: BorderSide(),borderRadius:BorderRadius.circular(50.0),


            ),
          ),
          initialCountryCode: 'IN',

          onChanged: (phone) {
            print(phone.completeNumber);
          },
        )

    );


Widget progress({
  double? width,
  double? heigth =8,


}) =>
    Stack(children: [
      Container(
        decoration: BoxDecoration(color:IconBackground ,borderRadius: BorderRadius.circular(50)),

        width: 180,
        height: 8,
      ),
      Container(
        decoration: BoxDecoration(color:SelectedIcon ,borderRadius: BorderRadius.circular(50)),

        width:width ,
        height: 8,

      )

    ],);


Widget textform({

  double? width,

}) =>
    Container(

      width: 300,
      height: 60,
      child: TextFormField(
        cursorColor:MainColor ,

        decoration: InputDecoration(fillColor:Colors.white,filled: true,focusColor: MainColor,
          border:UnderlineInputBorder(borderRadius: BorderRadius.circular(50),),
        ),

      ),);

AppBar AppBarWithLogo ()=>AppBar(
  elevation: 0.0,
  title: SvgPicture.asset("assets/LogoWithName.svg",height: 43,width: 115,),);


Widget SignUp () =>

    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:[
        Text(
          "Don’t have an account?"
          ,style: TextStyle(
            fontWeight: FontWeight.bold)
          ,),
        GestureDetector(
          onTap:(){},
          child: Text(
            " Sign Up",
            style: TextStyle(
                color:MainColor,fontWeight: FontWeight.bold)
            ,)
          ,)

      ],

    );


Widget TitleText({required String text}) => Text(text,style: TextStyle(fontWeight: FontWeight.bold,fontSize:30),);

Widget SubTitleText({required String text}) => Container(
  width: 340,
  child: Text(text,textAlign: TextAlign.center,style: TextStyle(fontSize:16,color: Colors.grey.shade600),),);


Widget GenderButton ({
  required String gender,
  required String gendericon,
  required Color color,
  required Color background,
})
=>Container(
  height: 150,
  width: 150,
  decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: background),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [

      SvgPicture.asset(gendericon,width: 60,height: 60,colorFilter: ColorFilter.mode(color, BlendMode.srcIn)),
      Text(
        gender,
        style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: color ),
      )
    ],
  ),
);

Widget RadioButton ({
  required String text,
  required String chosenicon,
  required Color bordercolor,
  required double w,

})=>Container(
height: 50,
width: 350,
decoration: BoxDecoration(
color: Colors.white,borderRadius:
BorderRadius.circular(50),
border: Border.all(color: bordercolor,width: 2)
),
child:Row(
mainAxisAlignment: MainAxisAlignment.start,
children: [
SizedBox(width:20),
Text(text,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
SizedBox(width: w,),
SvgPicture.asset(chosenicon),
],
),
);


Widget MulipleButton (
              {
                required String text,
                required Color background,
                required Color textcolor,
                required String icon,
              }
    )=>Container(
width: 110,
height: 40,
decoration: BoxDecoration(color:background,borderRadius: BorderRadius.circular(50)),
child:Row(
mainAxisAlignment: MainAxisAlignment.center,
children: [
SvgPicture.asset(icon),
WS20(),
Text(text,style: TextStyle(color: textcolor),)
],
),
);


Widget HS20 ()=> SizedBox(height: 20,);
Widget WS20 ()=> SizedBox(width: 20,);
Widget WS10 ()=> SizedBox(width: 10,);
