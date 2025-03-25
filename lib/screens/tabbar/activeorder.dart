import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Activeorder extends StatefulWidget {
  const Activeorder({super.key});

  @override
  State<Activeorder> createState() => _ActiveorderState();
}

class _ActiveorderState extends State<Activeorder> {
  String dropDownValue = 'All';

  List<String> dropdownItems =[
    'All',
    'TakeAway',
    'Delivery',
    'Dine in',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Order Type',style: GoogleFonts.poppins(fontWeight: FontWeight.w700,fontSize: 18),),

                DropdownButton(
                  value: dropDownValue,
                    items: dropdownItems.map((String dropdownItems){
                      return DropdownMenuItem(
                          value: dropdownItems,
                          child: Text(dropdownItems),
                      );
                    }).toList(),
                    onChanged: (String? newValue){
                    setState(() {
                      dropDownValue= newValue!;
                    });
                    })
                ]
              )
            ],
          ),
        ),
      )
    );
  }
}
