import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuforOffer extends StatelessWidget {
  final String? image;
  final String? titlelarge;
  final String? titlesmall;


  MenuforOffer(
      {required this.image,
      required this.titlelarge,
      required this.titlesmall});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: AssetImage(image!),
          height: 100,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8,left: 8,top: 8,bottom: 4),
          child: Text(titlelarge!,
              style: TextStyle(

                  color: Colors.black87,
                  fontWeight: FontWeight.w500,
                  fontSize: 12)),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 8,right: 8,bottom: 8),
          child: Text(titlesmall!,
              style: TextStyle(
                  fontFamily: 'fonts1',
                  color: Colors.black54,
                  fontWeight: FontWeight.w600,
                  fontSize: 11)),
        )
      ],
    );
  }
}
