import 'package:flutter/material.dart';

class MenuforOfferDetails extends StatelessWidget {
  final String? image;
  final String? titlelarge;
  final String? titlesmall;


  MenuforOfferDetails(
      {required this.image,
        required this.titlelarge,
        required this.titlesmall});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: const EdgeInsets.all(1),
          child: Image(
            image: AssetImage(image!),
            width: 160,
            height: 100,
            fit: BoxFit.cover,


          ),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 15,top: 20),
          child: Text(titlelarge!,
              style: const TextStyle(

                  color: Colors.black87,
                  fontWeight: FontWeight.w500,
                  fontSize: 12)),
        ),

        Padding(
          padding: const EdgeInsets.all(15),
          child: Text(titlesmall!,
              style: const TextStyle(
                  fontFamily: 'fonts1',
                  color: Colors.black54,
                  fontWeight: FontWeight.w600,
                  fontSize: 11)),
        )
      ],
    );
  }
}
