import 'package:day_1/widgets/theme.dart';
import 'package:flutter/material.dart';

class FirstEmptyState extends StatelessWidget {
  const FirstEmptyState({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 148, left: 67, right: 67),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/illu_first_logo.png',
                width: 240,
                height: 210,
              ),
              SizedBox(height: 100,),
              Text(
                'Success Order',
                style: titleTextStyle,
              ),
              SizedBox(height: 16,),
              Text(
                'We will delivery your package \nas soon as possible',
                style: subTitleTextStyle,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 50,),
              Container(
                width: 200,
                height: 55,
                decoration: BoxDecoration(
                  color: btnColor,
                  borderRadius: BorderRadius.circular(17)
                ),
                child: Center(
                  child: Text(
                    'Done',
                    style: btnTextStyle,
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