import 'package:day_1/widgets/theme.dart';
import 'package:flutter/material.dart';

class SecondRate extends StatelessWidget {
  const SecondRate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final maxLines = 5;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 80, left: 40, right: 40),
          child: Center(
            child: Column(
              children: [
                Image.asset(
                  'assets/home_head.png',
                  width: 295,
                  height: 210,
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Enjoy Your Meal',
                  style: titelRateTextStyle,
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  'Please rate our experience',
                  style: subTitleRateTextStyle,
                ),
                SizedBox(
                  height: 50,
                ),
                Image.asset(
                  'assets/stars_icon.png',
                  width: 290,
                  height: 50,
                ),
                SizedBox(height: 36,),
                Container(
                  height: maxLines * 24.0,
                  child: TextFormField(
                    maxLines: maxLines,
                    decoration: InputDecoration(
                        hintText: 'Your message',
                        hintStyle: messageRateTextStyle,
                        fillColor: bgMessageColor,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(17),
                          borderSide: BorderSide.none
                        )),
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  width: 320,
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: btnRateSecColor
                  ),
                  child: Center(
                    child: Text(
                      'Submit Review',
                      style: btnSecRateTextStyle,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
