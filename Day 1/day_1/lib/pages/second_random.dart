import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondRandom extends StatelessWidget {
  const SecondRandom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFBFF),
      body: Center(
        child: Column(
          children: [
            header('assets/beach.png', 'Arrina La', 'Bali, Dekat Bandung'),
            SizedBox(
              height: 26,
            ),
            body(
                'Pantai Pandawa adalah salah satu para\nkawasan wisata di area Kuta selatan sana \nKabupaten Dekat Bandung, Bali.'),
            SizedBox(height: 20,),
            footer()
          ],
        ),
      ),
    );
  }

  Widget header(String imgUrl, String namePlace, String cityName) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(150),
            bottomRight: Radius.circular(150),
          ),
          child: Image.asset(
            imgUrl,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          namePlace,
          style: GoogleFonts.poppins(
              fontSize: 26, fontWeight: FontWeight.w500, color: Colors.black),
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          'Bali, Dekat Bandung',
          style: GoogleFonts.poppins(
              fontSize: 16, fontWeight: FontWeight.w200, color: Colors.black),
        )
      ],
    );
  }

  Widget body(String desc) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Text(
            'About',
            style: GoogleFonts.poppins(
                fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),
          ),
        ),
        SizedBox(
          height: 6,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Text(
            desc,
            style: GoogleFonts.poppins(
                fontSize: 16, fontWeight: FontWeight.w200, color: Colors.black),
          ),
        ),
        SizedBox(
          height: 26,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Text(
            'Booking Now',
            style: GoogleFonts.poppins(
                fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
          ),
        ),
        SizedBox(
          height: 12,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Row(
              children: [
                Image.asset(
                  'assets/day_1.png',
                  width: 80,
                  height: 100,
                ),
                SizedBox(
                  width: 20,
                ),
                Image.asset(
                  'assets/day_2.png',
                  width: 80,
                  height: 100,
                ),
                SizedBox(
                  width: 20,
                ),
                Image.asset(
                  'assets/day_3.png',
                  width: 80,
                  height: 100,
                ),
                SizedBox(
                  width: 10,
                ),
                Image.asset(
                  'assets/day_4.png',
                  width: 80,
                  height: 100,
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget footer() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '\$22,800',
                style: GoogleFonts.poppins(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF3F6DF6)
                ),
              ),
              SizedBox(height: 2,),
              Text(
                '/night',
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w200,
                  color: Colors.black
                ),
              ),
              
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 24),
          child: Container(
                width: 220,
                height: 60,
                decoration: BoxDecoration(
                  color: Color(0xFF3F6DF6),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    'Continue',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFFAFAFA)
                    ),
                  ),
                ),
              ),
        )
      ],
    );
  }
}
