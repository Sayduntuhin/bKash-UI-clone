import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Carousel extends StatefulWidget{
  const Carousel({super.key});

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {

  final carouslcontroller = CarouselController();
  List banners = [
  { "id" : 1, "image" : 'assets/images/carousl1.jpg'},
  { "id" : 2, "image" : 'assets/images/carousl2.jpg'},
  { "id" : 3, "image" : 'assets/images/carousl3.jpg'},
  { "id" : 4, "image" : 'assets/images/carousl4.jpg'},
  { "id" : 5, "image" : 'assets/images/carousl15.jpg'},
  ];
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: CarouselSlider(

            carouselController: CarouselController(),
            items: banners.map((items) => Image.asset( items['image'],
              fit: BoxFit.fill,
              width: double.infinity,

            )).toList(),

            options:  CarouselOptions(
              scrollPhysics: const BouncingScrollPhysics(),
              autoPlay: true,
              viewportFraction: 1,
              autoPlayCurve: Curves.decelerate,
              animateToClosest: true,
              autoPlayAnimationDuration: const Duration(milliseconds: 600) ,
              aspectRatio: 3.2,
              onPageChanged: (index, reason){
                setState(() {
                  currentindex = index;

                });

              }

            ),

          ),

        ),
        const SizedBox(height: 5,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: banners.asMap().entries.map((value) {
            return GestureDetector(
              onTap: (){
                carouslcontroller.animateToPage(value.key);
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 3),
                width: currentindex == value.key ? 6 : 6,
                height: 6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: currentindex == value.key ? Colors.pink :
                      Colors.grey
                ),

              ),
            );

          }).toList(),
        )

      ],
    );


  }
}