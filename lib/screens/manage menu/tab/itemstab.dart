
import 'package:flutter/material.dart';
import 'package:foodchow/componets/bottomsheet.dart';
import 'package:foodchow/constant/color.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../componets/Button.dart';

class ItemsTab extends StatefulWidget {
  const ItemsTab({super.key});

  @override
  State<ItemsTab> createState() => _ItemsTabState();
}

class _ItemsTabState extends State<ItemsTab> {
  TextEditingController ChoiceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          // color: Colors.red,
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),

          child: Column(
            children: [
              Container(
                height: height * 0.7,
                width: width,
                // color: Colors.green,
                // color: Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/not.jpg',height: 250,),
                    Text('No Extras Found',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w500),)
                  ],
                ),
              ),

              BottomsheetMenu()

            ],
          ),
        ),
      ),
    );
  }
}

