import 'package:flutter/material.dart';

import '../constant/color.dart';

class CommonButton extends StatelessWidget {
  final VoidCallback onTap;
  final Widget? child;
  final Color? bgcolor;
  final Color? bordercolor;
  final double? width;
  final double? borderwidth;
  final double? height;
  final double? bordercircular;

  CommonButton(
      {super.key,
      required this.onTap,
      required this.child,
      this.bgcolor,
      this.width = 800,
      this.height = 70,
      this.bordercolor, this.bordercircular, this.borderwidth});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          border: Border.all(color: bordercolor ?? primarycolor, width: borderwidth?? 2),
          color: bgcolor ?? Primarysecond,
          borderRadius: BorderRadius.circular(bordercircular??15),
        ),
        child: Center(child: child),
      ),
    );
  }
}
