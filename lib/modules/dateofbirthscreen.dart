import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:west/modules/genderscreen.dart';

import '../shared/components/components.dart';
import '../shared/style/colors.dart';

class DateOfBirthScreen extends StatefulWidget {
  const DateOfBirthScreen({Key? key}) : super(key: key);

  @override
  State<DateOfBirthScreen> createState() => _DateOfBirthScreenState();
}
int _currentValue = 18;


class _DateOfBirthScreenState extends State<DateOfBirthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title: progress(
    width: 86.5
    ),
    ),
    body: SingleChildScrollView(
    child: Column(
    children: [
    Text("How old are you?",style: TextStyle(fontWeight: FontWeight.bold,fontSize:30),),
    SizedBox(height: 20,),
    Container(
    width: 340,
    child: Text("Please provide your age in years",textAlign: TextAlign.center,style: TextStyle(fontSize:16,color: Colors.grey.shade600),),),
SizedBox(height: 20,),
      NumberPicker(
        itemHeight: 50,
        itemCount: 7,
        textStyle: TextStyle(fontSize: 35,color: Colors.grey.shade600),
        selectedTextStyle: TextStyle(color: MainColor,fontSize: 45),
        value: _currentValue,
        minValue: 0,
        maxValue: 100,
        onChanged: (value) => setState(() => _currentValue = value),
      ),
      SvgPicture.asset("assets/AgePage.svg",),
defultButton(
background: MainColor,
context: context,
text: 'Continue',
    pagename: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => GenderScreen()));
    }

),


],
),
),
);
  }
}
