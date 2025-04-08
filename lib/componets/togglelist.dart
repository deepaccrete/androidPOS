import 'package:flutter/material.dart';
import 'package:foodchow/constant/color.dart';
import 'package:google_fonts/google_fonts.dart';

class SwitchList extends StatelessWidget {
  final String title;
  final void Function(bool) onChanged;
  final bool isvalue;
  const SwitchList({super.key, required this.title, required this.onChanged, required this.isvalue});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Container(
      padding: EdgeInsets.all(10),
      // width: width * 0.9 ,
      height: height * 0.06,
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        border: Border.all(color: primarycolor),
        borderRadius: BorderRadius.circular(12)
      ),
      // color: Colors.red,
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w500),),

        Transform.scale(
          scale: 0.8,
          child: Switch(value:isvalue , onChanged: onChanged)
        )
        ],
      ) ,
    );
  }
}
