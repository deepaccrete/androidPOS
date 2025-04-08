// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:foodchow/constant/color.dart';
import 'package:google_fonts/google_fonts.dart';

class CommonTextForm extends StatelessWidget {
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final String? Function(String?)? validator;
  final void Function(String)? onfieldsumbitted;
  final Icon? icon;
  final Widget? gesture;
  final String? hintText;
  final Color? BorderColor;
  final Color? HintColor;
  final double? borderc;
  // final String? labelText;
  final bool obsecureText;
  const CommonTextForm(
      {super.key,
      this.controller,
      this.hintText,
      required this.obsecureText,
      this.validator, this.icon,  this.gesture, this.focusNode, this.onfieldsumbitted, this.BorderColor, this.HintColor, this.borderc,  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onFieldSubmitted:onfieldsumbitted ,

      validator: validator,
      obscureText: obsecureText,
      controller: controller,
      focusNode: focusNode,
      decoration: InputDecoration(
        suffixIcon: gesture,
        // labelText: labelText,
        hintText: hintText,
        prefixIcon: icon,
        hintStyle: GoogleFonts.poppins(
            fontWeight: FontWeight.w600, color: HintColor ?? Colors.black),
        // label: labelText,
        focusedBorder:
            OutlineInputBorder(
                borderSide: BorderSide(
                  color: BorderColor ?? primarycolor
                ),
                borderRadius: BorderRadius.circular(borderc??15)),
        enabledBorder:
            OutlineInputBorder(
                borderSide: BorderSide(
                    color: BorderColor ?? Colors.black
                ),
                borderRadius: BorderRadius.circular(borderc??15)),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderc??15),
        ),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderc??15)),

      ),
    );
  }
}

