import 'package:flutter/material.dart';
import 'package:west/shared/components/components.dart';
import '../shared/style/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithLogo(),
      body: SingleChildScrollView(

        child: Column(
            children: [
              SizedBox(height: 43,),
              Text("Let’s start with your number",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize:30),),
              SizedBox(height: 43,),
              phoneform(),
              SizedBox(height: 20,),
              defultButton(
                background: MainColor,
                context: context,
                text: 'Continue',),
              SizedBox(height: 20,),
              Text("OR"),
              SizedBox(height: 20,),
              primaryButton(
                width: 320,
                background: Colors.white,
                context: context,
                text: 'Login with Facebook',
                logo: "assets/Facebook.svg",
                textcolor: Colors.black
              ),
              SizedBox(height: 20,),
              primaryButton(
                  width: 320,
                  background: Colors.white,
                  context: context,
                  text: 'Login with Google',
                  logo: "assets/Google.svg",
                  textcolor: Colors.black
              ),
              SizedBox(height: 60,),
              SignUp(),
            ]),
      ),
    );
  }
}
