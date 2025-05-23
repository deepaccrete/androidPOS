import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant/color.dart';
class WifiLan extends StatelessWidget {
  const WifiLan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset('assets/images/not.jpg')),
          // SizedBox(height: 10,),
          Text('No Device Found,',style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w600),)
        ],
      ),
      floatingActionButton:FloatingActionButton(
        backgroundColor: primarycolor,
        onPressed: (){},
        child: Icon(Icons.refresh,color: Colors.white,),
      ),
    );
  }
}
