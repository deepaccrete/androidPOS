import 'package:flutter/material.dart';
import 'package:foodchow/componets/Button.dart';
import 'package:foodchow/componets/Textform.dart';
import 'package:foodchow/constant/color.dart';
import 'package:foodchow/screens/dashboard.dart';
import 'package:google_fonts/google_fonts.dart';

import '../welcomeAdmin.dart';

class AdminLogin extends StatefulWidget {
  const AdminLogin({super.key});

  @override
  State<AdminLogin> createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {

  TextEditingController PasswordController = TextEditingController();

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;

    ValueNotifier obsecurepass = ValueNotifier(true);
    PasswordController.text = '123456';
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          // color: Colors.red,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          // color: Color(0xff1C3F6FF),
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                // Image Logo
                Container(
                  // color: Colors.red,
                  alignment: Alignment.bottomCenter,
                  width: width * 0.9,
                  height: height * 0.20,
                  child: Image.asset(
                    'assets/images/FOODCHOW3_processed.jpg',
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                // text Admin
                Text(
                  'Admin Login',
                  style: GoogleFonts.poppins(
                      fontSize: 18, fontWeight: FontWeight.w600),
                ),

                SizedBox(
                  height: 50,
                ),

                // password
                Container(
                  width: width * 0.75,
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Password',
                    style: GoogleFonts.poppins(
                        fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ),

                SizedBox(
                  height: 10,
                ),

                // Textform
                SizedBox(
                  width: width * 0.9,
                  child: ValueListenableBuilder(
                    valueListenable: obsecurepass,
                    builder: (context, value, child) {
                      return CommonTextForm(
                        obsecureText: value,
                        controller: PasswordController,
                        hintText: 'Enter Password',
                        validator: (value) {
                          if (value == null ||
                              value.isEmpty ||
                              value.length < 6) {
                            return value!.isEmpty
                                ? "Please Enter Password"
                                : 'Please Enter Six Digit';
                          }
                        },
                        gesture: GestureDetector(
                            onTap: () {
                              obsecurepass.value = !obsecurepass.value;
                            },
                            child: obsecurepass.value == true
                                ? Icon(
                                    Icons.visibility_off,
                                    color: primarycolor,
                                  )
                                : Icon(
                                    Icons.visibility,
                                    color: primarycolor,
                                  )),
                      );
                    },
                  ),
                ),

                SizedBox(
                  height: 30,
                ),

                // Login button
                CommonButton(
                  onTap: () {
                    if (_formkey.currentState!.validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AdminWelcome()));
                    }
                  },
                  child: Center(
                      child: Text(
                    'Login',
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                  )),
                  height: height * 0.065,
                ),

                SizedBox(
                  height: 25,
                ),
                // Text pass
                RichText(
                    text: TextSpan(
                        text: 'Default Password for Admin is ',
                        style: GoogleFonts.poppins(color: Colors.grey.shade700),
                        children: [
                      TextSpan(
                        text: '123456',
                        style: GoogleFonts.poppins(
                            color: Primarysecond,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1),
                      )
                    ])),

                SizedBox(
                  height: 40,
                ),
                // back button

                CommonButton(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Dashboard()));
                  },
                  height: height * 0.065,
                  child: Center(
                      child: Text(
                    'Back',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: primarycolor,
                    ),
                  )),
                  bgcolor: Colors.white,
                  bordercolor: primarycolor,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
