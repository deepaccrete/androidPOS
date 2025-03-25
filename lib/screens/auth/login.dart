import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodchow/componets/Button.dart';
import 'package:foodchow/componets/Textform.dart';
import 'package:foodchow/constant/color.dart';
import 'package:foodchow/screens/AuthSelectionScreen.dart';
import 'package:foodchow/screens/dashboard.dart';
import 'package:foodchow/screens/splashScreen.dart';
import 'package:foodchow/screens/welcomeAdmin.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  bool? isRemember = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final _fromKey = GlobalKey<FormState>();

  FocusNode emailFocus = FocusNode();
  FocusNode passwordFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;

    ValueNotifier obsecurepass = ValueNotifier(true);
    return Scaffold(
      backgroundColor: screenBGColor,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
          // color: Colors.red,
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              children: [
                // logo
                Container(
                  alignment: Alignment.center,
                  // color: Colors.green,
                  height: height * 0.15,
                  width: width * 0.6,
                  child: Image.asset(
                    'assets/images/FOODCHOW3_processed.jpg',
                  ),
                ),

                //   Text login
                Text('Restaurant Login',
                    style: GoogleFonts.poppins(
                        fontSize: 20, fontWeight: FontWeight.w600)
                    // TextStyle(fontSize: 20,fontFamily: Go// )
                    ),
                SizedBox(height: 26),

                //   TextForm Field

                Form(
                  key: _fromKey,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // email
                      Center(
                        child: Container(
                          // color: Colors.pink,
                          width: width * 0.75,
                          // alignment: Alignment(0.1, 0.),
                          child: Text(
                            'Email ID',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold, fontSize: 18),
                            // textAlign:TextAlign.start,
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      CommonTextForm(
                        obsecureText: false,
                        focusNode: emailFocus,
                        controller: emailController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "please Enter Email";
                          }
                        },
                        hintText: 'Enter Email',
                        onfieldsumbitted: (value) {
                          FocusScope.of(context).requestFocus(passwordFocus);
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      // PASSWORD
                      Center(
                        child: Container(
                          // color: Colors.pink,
                          width: width * 0.75,
                          // alignment: Alignment(0.1, 0.),
                          child: Text(
                            'Password',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold, fontSize: 18),
                            // textAlign:TextAlign.start,
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 5,
                      ),
                      ValueListenableBuilder(
                          valueListenable: obsecurepass,
                          builder: (context, value, child) {
                            return CommonTextForm(
                              controller: passwordController,
                                focusNode: passwordFocus,
                                obsecureText: obsecurepass.value,
                                hintText: 'Enter Password',
                                gesture:  GestureDetector(
                                    onTap: () {
                                      obsecurepass.value = !obsecurepass.value;
                                    },
                                    child: obsecurepass.value == true
                                        ? Icon(Icons.visibility)
                                        : Icon(Icons.visibility_off)),
                              validator: (value) {
                                if (value == null ||
                                    value.isEmpty ||
                                    value.length < 6) {
                                  return value!.isEmpty
                                      ? 'Please Enter Password'
                                      : 'minimum 6 six digit Required';
                                }
                              },

                            );
                          }),
                      SizedBox(
                        height: 10,
                      ),

                      //   forgot password
                      InkWell(
                        // onLongPress: ScaffoldMessenger.of(context),
                        // focusColor: Primarysecond,
                        onTap: () {},
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'Forgot Password?',
                            style: GoogleFonts.poppins(color: primarycolor),
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 20,
                      ),

                      //Remember Me

                      Row(
                        children: [
                          Checkbox(
                            value: isRemember,
                            activeColor: primarycolor,
                            onChanged: (bool? newvalue) {
                              setState(() {
                                isRemember = newvalue;
                              });
                            },
                          ),
                          Text(
                            'Remember Me',
                            style: GoogleFonts.poppins(),
                          ),
                        ],
                      ),


                      CommonButton(
                        onTap: () async {
                          if (_fromKey.currentState!.validate()) {
                            SharedPreferences prefs =
                                await SharedPreferences.getInstance();
                            await prefs.setBool('isLoggedIn', true);
                            await prefs.setString(
                                'email', emailController.text);
                            await prefs.setString(
                                'password', passwordController.text);

                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Dashboard()),
                            );
                          }
                        },
                        child: Center(
                          child: Text(
                            'Login',
                            style: GoogleFonts.poppins(
                                color: Colors.white, fontSize: 18),
                          ),
                        ),
                        bgcolor: primarycolor,
                      ),

                      SizedBox(
                        height: 10,
                      ),
                      CommonButton(
                        onTap: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> AuthSelectionScreen()));
                        },
                        child: Center(
                            child: Text(
                          'Back',
                          style: GoogleFonts.poppins(
                              color: primarycolor, fontSize: 18),
                        )),
                        bgcolor: Colors.white,
                        bordercolor: Colors.grey,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
