import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget{
  final String?  image;
  final String? title;


  const Menu({super.key,
    required this.image,
    required this.title,
});

  @override
  Widget build(BuildContext context) {
    return
         Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Image(image: AssetImage(image!),

              height: 50,

            ),

            Text(title!,style: TextStyle(fontFamily: 'fonts1',color: Colors.black,fontWeight: FontWeight.w600,fontSize: 11))



          ],
        );
  }
}