import 'package:bkash_app_c/Sub_widgets/Menu.dart';
import 'package:flutter/material.dart';

class ExpendedMenu extends StatefulWidget {
  const ExpendedMenu({super.key});

  @override
  State<ExpendedMenu> createState() => _ExpendedMenuState();
}

class _ExpendedMenuState extends State<ExpendedMenu> {
  bool expended = true;
  var opacity = 0.0;
  bool flag = true;

  @override
  Widget build(BuildContext context) {
    if (expended) {
      return Stack(
            children: [
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Menu(
                          image: 'assets/images/send_money.jpg',
                          title: 'Send Money'),
                      Menu(
                          image: 'assets/images/mobile_recharge.jpg',
                          title: 'Mobile Recharge'),
                      Menu(
                          image: 'assets/images/cash_out.jpg',
                          title: 'Cash Out'),
                      Menu(
                          image: 'assets/images/make_payment.jpg',
                          title: 'Make Payment'),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Menu(
                          image: 'assets/images/add_money.jpg',
                          title: 'Add Money'),
                      Menu(
                          image: 'assets/images/pay_bill.jpg',
                          title: 'Pay bill'),
                      Menu(
                          image: 'assets/images/savings.png', title: 'Savings'),
                      Menu(image: 'assets/images/loan.png', title: 'Loan'),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(width: 30,),
                      Menu(image: 'assets/images/b2b.png', title: 'bKash to Bank'),
                      SizedBox(width: 30,),
                      Menu(
                          image: 'assets/images/remitence.png',
                          title: 'Remittance'),
                      SizedBox(width: 35,),
                      Menu(
                          image: 'assets/images/educationfee.png',
                          title: 'Education  Fee'),
                      SizedBox(width: 26,),
                      Menu(image: 'assets/images/mfin.png', title: 'Microfinance'),
                    ],
                  )

                ],
              ),
              Positioned(

                  bottom: 0,
                  height: 100,
                  width: 800,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: const LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          stops: [
                            0.1, 1,
                          ],
                          colors: [
                            Colors.white,
                            Colors.white10,
                          ]),
                    ),
                  )),

              Positioned(
                left: 170,
                bottom: 20,
                child: Container(
                  height: 30,
                  width: 80,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xffDDDDDD),
                          blurRadius: 6.0,
                          spreadRadius: 2,
                          offset: Offset(
                            0.0, // Move to right 7.0 horizontally
                            5.0, // Move to bottom 8.0 Vertically
                          ))
                    ],
                  ),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          expended = false;
                        });
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'See More',
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.pink.shade400,
                                fontWeight: FontWeight.w600),
                          ), // <-- Text
                          Icon(
                            // <-- Icon
                            Icons.keyboard_arrow_down,
                            color: Colors.pink.shade400,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),


            ],
          );
    } else {
      return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Menu(
                      image: 'assets/images/send_money.jpg',
                      title: 'Send Money'),
                  Menu(
                      image: 'assets/images/mobile_recharge.jpg',
                      title: 'Mobile Recharge'),
                  Menu(image: 'assets/images/cash_out.jpg', title: 'Cash Out'),
                  Menu(
                      image: 'assets/images/make_payment.jpg',
                      title: 'Make Payment'),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Menu(
                      image: 'assets/images/add_money.jpg', title: 'Add Money'),
                  Menu(image: 'assets/images/pay_bill.jpg', title: 'Pay bill'),
                  Menu(image: 'assets/images/savings.png', title: 'Savings'),
                  Menu(image: 'assets/images/loan.png', title: 'Loan'),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(width: 30,),
                  Menu(image: 'assets/images/b2b.png', title: 'bKash to Bank'),
                  SizedBox(width: 30,),
                  Menu(
                      image: 'assets/images/remitence.png',
                      title: 'Remittance'),
                  SizedBox(width: 35,),
                  Menu(
                      image: 'assets/images/educationfee.png',
                      title: 'Education  Fee'),
                  SizedBox(width: 26,),
                  Menu(image: 'assets/images/mfin.png', title: 'Microfinance'),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
               const Row(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 35,
                  ),
                  Menu(image: 'assets/images/binimoy.png', title: 'BINIMOY'),
                  SizedBox(
                    width: 35,
                  ),
                  Menu(
                      image: 'assets/images/bangla_qr.png', title: 'Bangla QR'),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 30,
                width: 80,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xffDDDDDD),
                        blurRadius: 6.0,
                        spreadRadius: 2,
                        offset: Offset(
                          0.0, // Move to right 7.0 horizontally
                          5.0, // Move to bottom 8.0 Vertically
                        ))
                  ],
                ),
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        expended = true;

                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Close',
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.pink.shade400,
                              fontWeight: FontWeight.w600),
                        ), // <-- Text
                        Icon(
                          // <-- Icon
                          Icons.keyboard_arrow_up,
                          color: Colors.pink.shade400,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          );
    }
  }
}
