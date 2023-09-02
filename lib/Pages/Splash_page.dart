import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

class Splashpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        color: Color(0xFFe3146c),

        child: Center(child: AnimatedContainer(duration: Duration(),child: Image(image:  AssetImage('assets/images/bKash.png'),color:Colors.white ,width: 200,height: 200,)),),
      ),

    );
  }
}