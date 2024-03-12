import 'package:flutter/material.dart';
// import 'package:cupidarrow/shared/styles/color.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:west/shared/style/colors.dart';
Widget defButton({
  double? width,
  double? heigth,
  required Color ,
  Color? iconcolor,
  required Function function,
  required String text,
  IconData? icon,
  required ColorText ,

}) =>
    Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.0),color:Color  ),
      width: 350,
      height: 60,
      child: MaterialButton(
        onPressed: (){
          function();
        },
        child: Row(
          children: [

            Icon(icon,color:iconcolor),
            SizedBox(width: 100,),
            Center(
              child:   Text(

                text,
                style: TextStyle(

                  color:ColorText  ,fontSize: 20,

                ),

              ),
            ),
          ],
        ),
      ),);
Widget progras({
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

Widget inputphone({

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

Widget inputtext({

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