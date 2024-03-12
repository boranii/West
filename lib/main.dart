import 'package:flutter/material.dart';
import 'modules/splashscreen.dart';
import 'shared/style/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cupid Arrow',
      theme: ThemeData(
        primaryColor: MainColor,
          scaffoldBackgroundColor: Background,
          appBarTheme: AppBarTheme(
            elevation: 0.0,
            backgroundColor: Background,
            centerTitle: true,

          )
      ),
      home: SplashScreen()
    );
  }
}