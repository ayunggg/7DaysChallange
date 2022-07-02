// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondPricing extends StatelessWidget {
  const SecondPricing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        gradientBackground(),
        Padding(
          padding: const EdgeInsets.only(top: 80, left: 28, right: 28),
          child: Center(
            child: Column(
              children: [
                header(),
                SizedBox(
                  height: 50,
                ),
                Column(
                  children: [
                    option(
                        'Unlock Our Top Charts', 'assets/ic_check_orange.png'),
                    SizedBox(
                      height: 26,
                    ),
                    option('Save More than 1,000 Docs',
                        'assets/ic_check_orange.png'),
                    SizedBox(
                      height: 26,
                    ),
                    option(
                        '24/7 Customer Support', 'assets/ic_check_orange.png'),
                    SizedBox(
                      height: 26,
                    ),
                    option('Track Company’s Spending',
                        'assets/ic_check_orange.png'),
                  ],
                ),
                SizedBox(height: 60,),
                footer()
              ],
            ),
          ),
        )
      ]),
    );
  }

  Widget gradientBackground() {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight, end: Alignment.bottomLeft,
              // ignore: prefer_const_literals_to_create_immutables
              colors: [Color(0xFF0B073E), Color(0xFF602880)])),
    );
  }

  Widget header() {
    return Column(
      children: [
        Image.asset(
          'assets/illustration.png',
          width: 164,
        ),
        SizedBox(
          height: 24,
        ),
        Text(
          'Pro Features',
          style: GoogleFonts.poppins(
              fontSize: 22, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Unlock the winner modules\nand get more insights',
          style: GoogleFonts.poppins(fontSize: 16, color: Color(0xFF7F7FAD)),
          textAlign: TextAlign.center,
        )
      ],
    );
  }

  Widget option(String description, String imgUrl) {
    return Row(
      children: [
        Image.asset(
          imgUrl,
          width: 26,
        ),
        SizedBox(
          width: 12,
        ),
        Text(
          description,
          style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
        )
      ],
    );
  }

  Widget footer() {
    return Column(
      children: [
        Container(
          width: 319,
          height: 55,
          decoration: BoxDecoration(
            color: Color(0xFFE57C73),
            borderRadius: BorderRadius.circular(30)
          ),
          child: Center(
            child: Text(
              'Subscribe Now',
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.white
              ),
            ),
          ),
        ),
        SizedBox(height: 30,),
        Text(
          'Contact Support',
          style: GoogleFonts.poppins(
            fontSize: 16,
            color: Colors.white,
            decoration: TextDecoration.underline
          ),
          
        )
      ],
    );
  }
}
