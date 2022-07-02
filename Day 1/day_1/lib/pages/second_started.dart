// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondStarted extends StatelessWidget {
  const SecondStarted({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(left: 40, right: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40,),
              Text(
                'Health First.',
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w600
                ),
              ),
              SizedBox(height: 16,),
              Text(
                'Exercise together with our best\ncommunity fit in the world',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 60,),
              Center(
                child: Image.asset(
                  'assets/gallery.png',
                  height: 402,
                ),
              ),
              SizedBox(height: 70,),
              Container(
                color: Color(0xFFAFEA0D),
                height: 55,
                child: Center(
                  child: Text(
                    'Shape My Body',
                    style: GoogleFonts.lato(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Center(
                child: Text(
                  'Terms & Conditions',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    color: Color(0xFF757575),
                    decoration: TextDecoration.underline
                  ),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}