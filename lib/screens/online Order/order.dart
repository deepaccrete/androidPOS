import 'package:flutter/material.dart';
import 'package:foodchow/constant/color.dart';
import 'package:google_fonts/google_fonts.dart';

class Online_order extends StatelessWidget {
  const Online_order({super.key});

  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              // Manage menu and button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Manage Online Order',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  Container(
                    width:width * 0.2,
                    height: height * 0.04,
                    decoration: BoxDecoration(
                      border: Border.all(color: primarycolor)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            decoration:BoxDecoration(
                              border: Border.all(color: primarycolor),
                              shape: BoxShape.circle,

                            ),
                            child: Icon(Icons.volume_mute_outlined,color: Colors.deepOrange,)),
                        Text('Mute',style: GoogleFonts.poppins(fontWeight: FontWeight.w600),)
                      ],
                    ),
                  )
                ],
              ),

              Container(
                // alignment: Alignment.bottomCenter,
                width: width,
                height: height * 0.7,
                // color: Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/not.jpg',width: 300,height: 300,),
                    Text('No Order Found',style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 16),)

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
