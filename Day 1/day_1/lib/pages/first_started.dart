// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstStarted extends StatelessWidget {
  const FirstStarted({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/bg_started.png'
                ),
                fit: BoxFit.fill
              ),
            ),
          ),
          Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 530, left: 74, right: 74),
                  child: Text(
                    'Maximize Revenue',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: 16,),
                Text(
                  'Gain more profit from cryptocurrency \nwithout any risk involved',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 50,),
                 FloatingActionButton(
                onPressed: () {},
            backgroundColor: Color(0xFF877BFB),
            child: Center(
              child: Image.asset(
                'assets/icon_login.png',
                width: 34,
                ),
            ),
          ),
              ],
            ),
          ),
         
        ],
      ),
    );
  }
}