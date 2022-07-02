// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstRandom extends StatefulWidget {
  const FirstRandom({Key? key}) : super(key: key);

  @override
  State<FirstRandom> createState() => _FirstRandomState();
}

class _FirstRandomState extends State<FirstRandom> {
  int count = 1;
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFC),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
          child: Center(
            child: Column(
              children: [
                Text(
                  'My Shopping Cart',
                  style: GoogleFonts.poppins(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 30,
                ),
                userOrder('assets/menu_1.png', 'Burger Malleta', 'McTheone',
                    '\$ 90.00', count.toString(), 1),
                // ignore: prefer_const_constructors
                SizedBox(
                  height: 26,
                ),
                userOrder('assets/menu_2.png', 'Mojito Orange', 'The Bar',
                    '\$ 510.00', count.toString(), 2),
                SizedBox(
                  height: 26,
                ),
                priceOrder(),
                SizedBox(
                  height: 60,
                ),
                footer()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget userOrder(String imgUrl, String foodName, String nameRestaurant,
      String price, String countOrder, int idx) {
    index == idx;
    return Container(
      width: 315,
      height: 140,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        imgUrl,
                        width: 80,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            foodName,
                            style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          Text(
                            nameRestaurant,
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w200,
                                color: Color.fromARGB(255, 82, 86, 98)),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            count--;
                          });
                        },
                        child: Image.asset(
                          'assets/ic_min.png',
                          width: 22,
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        countOrder,
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            count++;
                          });
                        },
                        child: Image.asset(
                          'assets/ic_plus.png',
                          width: 22,
                        ),
                      ),
                      SizedBox(
                        width: 157,
                      ),
                      Text(
                        price,
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget priceOrder() {
    return Container(
      width: 315,
      height: 161,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 16, left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Information',
              style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sub Total',
                  style: GoogleFonts.poppins(fontSize: 16, color: Colors.black),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Text(
                    '\$ 600.00',
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Delivery',
                  style: GoogleFonts.poppins(fontSize: 16, color: Colors.black),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Text(
                    '\$ 80.00',
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: GoogleFonts.poppins(fontSize: 16, color: Colors.black),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Text(
                    '\$ 800.00',
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget footer() {
    return Column(
      children: [
        Container(
          width: 327,
          height: 60,
          decoration: BoxDecoration(
            color: Color(0xFFFFC532),
            borderRadius: BorderRadius.circular(53),
          ),
          child: Center(
            child: Text(
              'Checkout Now',
              style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: 327,
          height: 60,
          decoration: BoxDecoration(
            color: Color(0xFFD9D9D9),
            borderRadius: BorderRadius.circular(53),
          ),
          child: Center(
            child: Text(
              'Save To Wishlish',
              style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}
