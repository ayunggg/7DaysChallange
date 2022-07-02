// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondSplash extends StatelessWidget {
  const SecondSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bg_house.png'),
                fit: BoxFit.fill
              )
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 77, vertical: 70),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/home_logo.png',
                  width: 51,
                ),
                SizedBox(width: 12,),
                Text(
                  'HouseQu',
                  style: GoogleFonts.montserrat(
                    fontSize: 32,
                    color: Colors.black,
                    fontWeight: FontWeight.w800
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
