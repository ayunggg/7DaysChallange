import 'package:day_1/widgets/theme.dart';
import 'package:flutter/material.dart';

class FirstRate extends StatelessWidget {
  const FirstRate({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgFoodColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 100, left: 38, right: 38),
        child: Center(
          child: Column(
            children: [
              Image.asset(
                'assets/pizza.png',
                width: 200,
              ),
              SizedBox(height: 30,),
              Text(
                'Pizza Ballado',
                style: titleFoodTextStyle,
              ),
              SizedBox(height: 6,),
              Text(
                '\$90,00',
                style: priceFoodTextStyle,
              ),
              SizedBox(height: 90,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Was It Delicious?',
                    style: rateTextStyle,
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/emoji_one.png',
                        width: 60,
                      ),
                      SizedBox(width: 20,),
                      Image.asset(
                        'assets/emoji_two.png',
                        width: 60,
                      ),
                      SizedBox(width: 20,),
                      Image.asset(
                        'assets/emoji_three.png',
                        width: 60,
                      ),
                      SizedBox(width: 20,),
                      Image.asset(
                        'assets/emoji_four.png',
                        width: 60,
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 90,),
              Container(
                width: 210,
                height: 55,
                decoration: BoxDecoration(
                  color: btnFoodColor,
                  borderRadius: BorderRadius.circular(60)
                ),
                child: Center(
                  child: Text(
                    'Rate Now',
                    style: btnFoodTextStyle,
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