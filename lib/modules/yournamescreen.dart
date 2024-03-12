import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:west/modules/emailscreen.dart';
import '../shared/components/components.dart';
import '../shared/style/colors.dart';

class YourNameScreen extends StatelessWidget {
  const YourNameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: progress(
            width: 66.5
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("What’s Your Name ?",style: TextStyle(fontWeight: FontWeight.bold,fontSize:30),),
            SizedBox(height: 20,),
            Container(
              width: 340,
              child: Text("Let's Get to Know Each Other",textAlign: TextAlign.center,style: TextStyle(fontSize:16,color: Colors.grey.shade600),),),
            SizedBox(height: 20,),
            textform(),
            SizedBox(height: 20,),
            defultButton(
              background: MainColor,
              context: context,
              text: 'Continue',
                pagename: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => EmailScreen()));
                }),

            SizedBox(height: 90,),
            Container(
                child:SvgPicture.asset("assets/NamePage.svg",)
            ),

          ],
        ),
      ),
    );
  }
}
