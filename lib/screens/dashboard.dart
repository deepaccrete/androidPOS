import 'package:flutter/material.dart';
import 'package:foodchow/constant/color.dart';
import 'package:foodchow/screens/auth/admin_login.dart';
import 'package:foodchow/screens/auth/cashier_waiter.dart';
import 'package:foodchow/screens/auth/login.dart';
import 'package:foodchow/screens/auth/logout.dart';
import 'package:foodchow/screens/auth/support.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Dashboard extends StatelessWidget {
  Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    Future<void> logout() async {
      final prefs = await SharedPreferences.getInstance();
      await prefs.clear(); // Clears isLoggedIn, email, and password
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => loginScreen()),
      );
    }

    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          // color: Colors.red,
          child: Column(
            children: [
              Container(
                alignment: Alignment.bottomCenter,
                height: height * 0.20,
                width: width * 0.8,
                child: Image.asset(
                  'assets/images/FOODCHOW3_processed.jpg',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'DashBoard',
                style: GoogleFonts.poppins(
                    fontSize: 25, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AdminLogin()));
                      },
                      child: Container(
                        height: height * 0.12,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: primarycolor, width: 2)),
                        // color: Colors.green,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.person_2_outlined,
                              color: primarycolor,
                              size: 40,
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Admin',
                              style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: primarycolor),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CashierWaiter()));
                      },
                      child: Container(
                        height: height * 0.12,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: primarycolor, width: 2)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.receipt_long,
                              size: 40,
                              color: primarycolor,
                            ),
                            SizedBox(height: 5),
                            Text('Cashier|Waiter',
                                style: GoogleFonts.poppins(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: primarycolor)),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,MaterialPageRoute(builder:(context)=>Support() ));
                      },
                      child: Container(
                        height: height * 0.12,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: primarycolor, width: 2)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.support_agent_outlined,
                              size: 40,
                              color: primarycolor,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text('Support',
                                style: GoogleFonts.poppins(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: primarycolor)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>Logout()));
                      },
                      child: Container(
                        height: height * 0.12,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: primarycolor, width: 2)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.logout_outlined,
                              size: 40,
                              color: primarycolor,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text('Logout',
                                style: GoogleFonts.poppins(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: primarycolor)),
                          ],
                        ),
                      ),
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
