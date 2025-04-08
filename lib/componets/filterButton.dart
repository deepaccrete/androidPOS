import 'package:flutter/material.dart';
class Filterbutton extends StatelessWidget {
  final String title;
  final String selectedFilter;
  final void Function() onpressed;
  final double? borderc;
  const Filterbutton({super.key, required this.title, required this.selectedFilter, required this.onpressed, this.borderc});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed:onpressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: selectedFilter==title ? Colors.teal : Colors.white,
            foregroundColor: selectedFilter==title ? Colors.white : Colors.teal,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderc??8),
                side: BorderSide(color: Colors.teal)
            )
        ),
        child: Text(title));
  }
}