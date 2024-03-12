import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:west/modules/loginscreen.dart';

import '../style/colors.dart';

Widget primaryButton ({
     Function? pagename,
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
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
        },
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
  Function? pagename,
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
    onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
    },
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

