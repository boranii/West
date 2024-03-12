import 'package:flutter/material.dart';

import '../shared/componens/comonent.dart';
class Mynumber2 extends StatelessWidget {
  const Mynumber2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back,color: Colors.black,),
        title: progras(
            width: 44.5
        ),
      ),
    );
  }
}