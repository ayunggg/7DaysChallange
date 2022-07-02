// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstSplash extends StatelessWidget {
  const FirstSplash({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF13131E),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 230, left: 118, right: 118, bottom: 170),
              child: Image.asset('assets/sword.png',
              width: 140,
              ),
            ),
            Text("V E N T U R E",
            style: GoogleFonts.dmSerifDisplay(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 32,
            ),)
          ],
        ),
      ),
    );
  }
}