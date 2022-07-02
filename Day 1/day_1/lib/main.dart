// ignore_for_file: prefer_const_constructors

import 'package:day_1/pages/first_empty_state.dart';
import 'package:day_1/pages/first_pricing.dart';
import 'package:day_1/pages/first_random.dart';
import 'package:day_1/pages/first_rate.dart';
import 'package:day_1/pages/first_sign_in.dart';
import 'package:day_1/pages/first_splash.dart';
import 'package:day_1/pages/first_started.dart';
import 'package:day_1/pages/second_empty_state.dart';
import 'package:day_1/pages/second_pricing.dart';
import 'package:day_1/pages/second_random.dart';
import 'package:day_1/pages/second_rate.dart';
import 'package:day_1/pages/second_sign_in.dart';
import 'package:day_1/pages/second_splash.dart';
import 'package:day_1/pages/second_started.dart';
import 'package:flutter/material.dart';

void main() => runApp(SevenDays());

class SevenDays extends StatelessWidget {
  const SevenDays({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SecondRandom(),
    );
  }
}