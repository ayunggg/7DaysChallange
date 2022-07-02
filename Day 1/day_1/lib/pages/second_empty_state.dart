import 'package:day_1/widgets/theme.dart';
import 'package:flutter/material.dart';

class SecondEmptyState extends StatelessWidget {
  const SecondEmptyState({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/illus_second_logo.png',
              width: 375,
              height: 454,
            ),
            SizedBox(height: 70,),
            Text(
              'Boost Profit',
              style: secTitleTextStyle,
            ),
            SizedBox(height: 16,),
            Text(
              'Our tools are helping business \nto grow much faster',
              style: descTextStyle,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 60,),
              FloatingActionButton(
              backgroundColor: secBtnColor,
              child: Image.asset(
                'assets/rocket_logo.png',
                width: 32,
              ),
              onPressed: () {}),
          ],
        ),
      ),
    );
  }
}