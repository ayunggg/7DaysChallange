import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondSignIn extends StatelessWidget {
  const SecondSignIn({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 28, right: 28),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 64,),
              Center(child: Image.asset('assets/paper_logo.png', width: 245, height: 279,)),
              SizedBox(height: 53,),
              Text(
                'Email Address',
                style: GoogleFonts.openSans(
                  fontSize: 14,
                  color: Color(0xFF17171A)
                ),
              ),
              SizedBox(height: 6,),
              TextFormField(
                style: GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600
                ),
                decoration: InputDecoration(
                  fillColor: Color(0xFFF3F3F3),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(70),
                    borderSide: BorderSide(
                      color: Colors.black
                    ),
                  )
                ),
              ),
              SizedBox(height: 20,),
              Text(
                'Password',
                style: GoogleFonts.openSans(
                  fontSize: 14,
                  color: Color(0xFF17171A)
                ),
              ),
              SizedBox(height: 6,),
              TextFormField(
                obscureText: true,
                style: GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600
                ),
                decoration: InputDecoration(
                  fillColor: Color(0xFFF3F3F3),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(70),
                    borderSide: BorderSide(
                      color: Colors.black
                    ),
                  )
                ),
              ),
              SizedBox(height: 50,),
              Center(
                child: Container(
                  width: 320,
                  height: 55,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xFF5468FF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(60)
                      )
                    ),
                    onPressed: () {}, 
                  child: Text('Log In',
                    style: GoogleFonts.openSans(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white
                    )
                  ,),)
                ),
              ),
              SizedBox(height: 16,),
              Center(
                child: Container(
                  width: 320,
                  height: 55,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(60),
                        side: BorderSide(color: Color(0xFFD3D3D3))
                      )
                    ),
                    onPressed: () {}, 
                  child: Text('Create New Account',
                    style: GoogleFonts.openSans(
                      fontSize: 18,
                      color: Color(0xFFCFCFCF)
                    )
                  ,),)
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}