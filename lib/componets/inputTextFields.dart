import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:foodchow/constant/color.dart';

class InputTextFields extends StatelessWidget {
  final String Textdata;

  final String? titleText;

  @override
  const InputTextFields(
      {required this.Textdata, this.titleText, super.key});

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Center(
            child: TextField(
              decoration: InputDecoration(
                  labelText: Textdata,
                  labelStyle: TextStyle(color: Colors.black),
                  disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: primarycolor),
                      borderRadius: BorderRadius.circular(10)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: primarycolor))),
            ),
          ),
        )
      ],
    );
  }
}
