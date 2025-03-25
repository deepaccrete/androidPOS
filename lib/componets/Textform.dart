// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommonTextForm extends StatelessWidget {
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final String? Function(String?)? validator;
  final void Function(String)? onfieldsumbitted;
  final Icon? icon;
  final Widget? gesture;
  final String? hintText;
  // final String? labelText;
  final bool obsecureText;
  const CommonTextForm(
      {super.key,
      this.controller,
      this.hintText,
      required this.obsecureText,
      this.validator, this.icon,  this.gesture, this.focusNode, this.onfieldsumbitted,  });

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
        hintStyle: GoogleFonts.poppins(
            fontWeight: FontWeight.w600, color: Colors.black),
        // label: labelText,
        focusedBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        enabledBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}

