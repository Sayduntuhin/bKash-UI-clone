import 'package:flutter/material.dart';

class MenuforOffer2 extends StatelessWidget {
  final String? image;
  final String? titlelarge;



  const MenuforOffer2(
      {super.key, required this.image,
        required this.titlelarge,
        });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image(
          image: AssetImage(image!),
          height: 100,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(titlelarge!,
              style: TextStyle(

                  color: Colors.pink.shade500,
                  fontWeight: FontWeight.w500,
                  fontSize: 13)),
        ),

      ],
    );
  }
}
