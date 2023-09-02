import 'package:flutter/material.dart';

class Balancebutton extends StatefulWidget{
  const Balancebutton({super.key});

  @override
  State<Balancebutton> createState() => _BalancebuttonState();
}

class _BalancebuttonState extends State<Balancebutton> {
  bool isbalanceshow = false;
  bool tapforbalance = true;
  bool isAnimated = false;

  Future<void> changestate() async {
    isAnimated = true;
    tapforbalance = false;

    await Future.delayed(const Duration(milliseconds: 800), () {
      setState(() {
        isbalanceshow = true;
      });
    });
    await Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        isbalanceshow = false;
      });
    });
    await Future.delayed(const Duration(milliseconds: 200), () {
      setState(() {
        isAnimated = false;
      });
    });
    await Future.delayed(const Duration(milliseconds: 700), () {
      setState(() {
        tapforbalance = true;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: changestate,
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Container(
          width: 155,
          height: 27,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25)),
          child: Stack(
            alignment: Alignment.center,
            children: [
              ///Balance show
              AnimatedOpacity(
                opacity: isbalanceshow ? 1 : 0,
                duration: const Duration(milliseconds: 500),
                child: const Text(
                  '৳ 15000.00',
                  style: TextStyle(
                      color: Colors.pink, fontSize: 14,fontWeight: FontWeight.w500),
                ),
              ),

              ///Tap for balance
              AnimatedOpacity(
                opacity: tapforbalance ? 1 : 0,
                duration: const Duration(milliseconds: 300),
                child: const Text(
                  'Tap for Balance',
                  style: TextStyle(
                      fontSize: 13.5,
                      fontWeight: FontWeight.w500,
                      color: Colors.pink),
                ),
              ),
              AnimatedPositioned(
                left: isAnimated == false ? 5 : 130,
                curve: Curves.fastOutSlowIn,
                duration: const Duration(milliseconds: 1000),
                child: Container(
                  width: 20,
                  height: 20,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const FittedBox(
                      child: Image(image: AssetImage('assets/images/tk.png'),alignment: Alignment.center,width: 10,height: 10,color: Colors.white,)
                    //     Text(
                    //   '৳',
                    //   style: TextStyle(
                    //     fontWeight: FontWeight.w500,
                    //       fontSize: 15, color: Colors.white),
                    // )
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );

  }
}