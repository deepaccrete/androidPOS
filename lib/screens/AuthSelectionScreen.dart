import 'package:flutter/material.dart';
import 'package:foodchow/componets/Button.dart';
import 'package:foodchow/constant/color.dart';
import 'package:foodchow/screens/auth/login.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthSelectionScreen extends StatelessWidget {
  const AuthSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 1;
    double width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 50),
          // margin: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          // color: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // color: Colors.green,
                height: height * 0.15,
                width: width * 0.55,
                alignment: Alignment.center,
                child: Image.asset('assets/images/FOODCHOW1_processed.jpg'),
              ),
              SizedBox(height: 10),
              Text(
                'Welcome To\nFoodChows POS',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600, fontSize: 20),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 50),
              // Login Button
              CommonButton(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => loginScreen()));
                  },
                  child: Center(
                      child: Text('Login',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 25,
                              color: Colors.white)

                          ))),
              SizedBox(height: 10),
              // Signup Button
              CommonButton(
                  onTap: () {},
                  child: Center(
                      child: Text(
                    'Sign Up',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 25,
                        color: Colors.white),
                  ))),
              SizedBox(height: 10),

              // Watch Demo Button
              CommonButton(
                  onTap: () {},
                  bgcolor: Colors.white,
                  child: Center(
                      child: Text(
                    'Watch Demo',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 25,
                        color: primarycolor),
                  ))),
            ],
          ),
        ),
      ),
    );
  }
}
