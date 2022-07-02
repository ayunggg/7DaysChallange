// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstPricing extends StatefulWidget {
  const FirstPricing({Key? key}) : super(key: key);

  @override
  State<FirstPricing> createState() => _FirstPricingState();
}

class _FirstPricingState extends State<FirstPricing> {
  int selectedIndex = -1;
  bool secTap = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
            children: [
        header(),
        SizedBox(
          height: 50,
        ),
        option(0, 'Money Security', 'support', 'assets/pig_icon.png', false,
            '24/7'),
        SizedBox(
          height: 24,
        ),
        option(1, 'Automation', 'we provide', 'assets/paper_logo.png', false,
            'invoice'),
        SizedBox(
          height: 24,
        ),
        option(2, 'Balance Report', 'can up to', 'assets/dollar_icon.png',
            false, '10k'),
        SizedBox(height: 80,),
        navBar()
            ],
          ));
  }

  Widget header() {
    return Padding(
      padding: const EdgeInsets.only(right: 30, left: 30),
      child: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/crown_logo.png',
              width: 100,
            ),
            SizedBox(
              height: 48,
            ),
            Text(
              'Which one you wish\nto Upgrade?',
              style: GoogleFonts.poppins(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget option(int index, String title, String subTitle, String imgUrl,
      bool stat, String desSubTitle) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
          stat = true;
        });
      },
      child: Container(
        width: 315,
        height: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            border: Border.all(
                color: index == selectedIndex
                    ? Color(0xFF6050E7)
                    : Color(0xFFD9DEEA))),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, bottom: 20),
              child: Image.asset(
                imgUrl,
                width: 66,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 27, bottom: 26, left: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  Row(
                    children: [
                      Text(
                        subTitle,
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: Color(0xFFA3A8B8)),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        desSubTitle,
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF5343C2)),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 41),
              child: selectedIndex == index
                  ? Image.asset(
                      'assets/ic_check.png',
                      width: 25,
                    )
                  : SizedBox(
                      width: 25,
                    ),
            )
          ],
        ),
      ),
    );
  }

  Widget navBar() {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: Color(0xFF6050E7)
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 30, top: 22, bottom: 22),
        child: Row(
          children: [
            Text(
              'Upgrade Now',
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.white
              ),
            ), 
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(width: 167,),
                Image.asset(
                  'assets/next_arrow.png',
                  width: 24,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
