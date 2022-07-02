import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstSignIn extends StatelessWidget {
  const FirstSignIn({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF181A20),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 70, left: 40, right: 40
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/coin_logo.png',
                width: 50,
              ),
              SizedBox(
                height: 70,
              ),
              Text(
                'Welcome back. \nLet’s make money.',
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.white
                ),
              ),
              SizedBox(
                height: 70,
              ),
              TextFormField(
                style: GoogleFonts.poppins(
                  color: Colors.white
                ),
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Color(0xFF6F7075)
                  ),
                  fillColor: Color(0xFF262A34),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(17),
                    borderSide: BorderSide.none
                  )
                ),
              ),
      
              SizedBox(
                height: 20,
              ),
      
              TextFormField(
                obscureText: true,
                style: GoogleFonts.poppins(
                  color: Colors.white
                ),
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Color(0xFF6F7075)
                  ),
                  fillColor: Color(0xFF262A34),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(17),
                    borderSide: BorderSide.none
                  ),
                  suffixIcon: Icon(
                    Icons.visibility,
                    color: Color(0xFF6F7075),
                  )
                ),
              ),
                SizedBox(
                  height: 6,
                ),
              Container(
                alignment: Alignment(1, 1),
                child: Text(
                  'Forgot My Password',
                  style: GoogleFonts.poppins(
                    color: Color(0xFF6A6B70),
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(height: 117,),
              Center(
                child: Container(
                  width: 295,
                  height: 55,
                  child: TextButton(
                    style:  TextButton.styleFrom(
                      backgroundColor: Color(0xFFFCAC15),
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17)
                      )
                    ),
                    onPressed: () {},
                   child: Text(
                     'Sign In',
                     style: GoogleFonts.openSans(
                       fontSize: 18,
                       fontWeight: FontWeight.w600,
                       color: Color(0xFF6B4909)
                     ),
                   )),
                ),
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have account?',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: Colors.white
                    ),
                  ),
                  SizedBox(width: 5,),
                  Text(
                    'Sign Up',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline,
                      color: Colors.white
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}