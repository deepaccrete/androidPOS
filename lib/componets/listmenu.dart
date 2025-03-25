import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant/color.dart';

class Listmenu extends StatelessWidget {
  final VoidCallback? onTap;
  final String title;
  final IconData icons;
  final Color? color;
  final Color? colortext;
  final Color? colorb;
  final Color? listcolor;
  final double? heightCon;
  final double? borderradius;
  final double? borderwidth;
  const Listmenu({super.key, required this.title, required this.icons, this.color, this.onTap, this.listcolor, this.heightCon, this.borderwidth, this.colorb, this.borderradius, this.colortext,});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: heightCon?? MediaQuery.of(context).size.height * 0.07,
      // width: MediaQuery.of(context).size.width * 0.,
      decoration: BoxDecoration(
        color: listcolor??Colors.white,
        border: Border.all(
          width: borderwidth??1,
          color: colorb??primarycolor,
        ),
        borderRadius: BorderRadius.circular(borderradius??10),

      ),
      child: ListTile(
        style: ListTileStyle.drawer,

        onTap:onTap,
        leading:Icon(icons,color:color?? primarycolor,),
        title: Text(title,style: GoogleFonts.poppins(fontSize: 14,color: colortext?? Colors.black),),
      ),
    );

    }}

// }
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// import '../constant/color.dart';
//
// class Listmenu extends StatelessWidget {
//   final VoidCallback? onTap;
//   final String title;
//   final IconData icons;
//   final Color? color;
//   final Color? colorb;
//   final Color? listcolor;
//   final double? heightCon;
//   final double? borderradius;
//   final double? borderwidth;
//
//   const Listmenu({
//     super.key,
//     required this.title,
//     required this.icons,
//     this.color,
//     this.onTap,
//     this.listcolor,
//     this.heightCon,
//     this.borderwidth,
//     this.colorb,
//     this.borderradius,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: heightCon ?? MediaQuery.of(context).size.height * 0.07,
//       width: double.infinity,  // Force it to take full width
//       decoration: BoxDecoration(
//         color: listcolor ?? Colors.white,
//         border: Border.all(
//           width: borderwidth ?? 1,
//           color: colorb ?? primarycolor,
//         ),
//         borderRadius: BorderRadius.circular(borderradius ?? 10),
//       ),
//       child: InkWell(   // Use InkWell if you want ripple effect (better than ListTile onTap)
//         onTap: onTap,
//         child: Row(
//           children: [
//             SizedBox(width: 16),
//             Icon(icons, color: color ?? primarycolor),
//             SizedBox(width: 16),
//             Text(title, style: GoogleFonts.poppins(fontSize: 14)),
//           ],
//         ),
//       ),
//     );
//   }
// }
