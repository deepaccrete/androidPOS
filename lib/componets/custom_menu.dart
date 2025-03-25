import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant/color.dart';

class CustomMenu extends StatelessWidget {
 final  void Function()? onTapp;
  final VoidCallback? onTap;
 final IconData icons;
 final Color? color;
 final Color? colortext;
 final Color? colorb;
 final Color? listcolor;
 final double? heightCon;
 final double? borderradius;
 final double? borderwidth;
 final double? Iconsize;
 final String title;

  const CustomMenu({super.key, required this.onTap,  this.onTapp, required this.icons, this.color, this.colortext, this.colorb, this.listcolor, this.heightCon, this.borderradius, this.borderwidth, this.Iconsize, required this.title});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;

    return   GestureDetector(
      onTap: onTap,
      child: Container(
        height: height * 0.15,
        width: width * 0.4,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            // border: Border.all(color: primarycolor, width: 2)
            ),
        // color: Colors.green,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icons,
              color: color?? primarycolor,
              size: 40,
            ),
            SizedBox(height: 5),
            Text(
              title,
              style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: colortext?? Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
