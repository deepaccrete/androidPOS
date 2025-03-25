import 'package:flutter/material.dart';
import 'package:foodchow/componets/Textform.dart';
import 'package:foodchow/constant/color.dart';
import 'package:google_fonts/google_fonts.dart';

class Pastorder extends StatefulWidget {
  const Pastorder({super.key});

  @override
  State<Pastorder> createState() => _PastorderState();
}

class _PastorderState extends State<Pastorder> {
  String dropDownValue = 'All';

  List<String> dropdownItems = [
    'All',
    'TakeAway',
    'Delivery',
    'Dine in',
  ];

  final outr =  OutlineInputBorder(
    borderRadius: BorderRadius.circular(12)
  );

  TextEditingController searchbar = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery
        .of(context)
        .size
        .height * 1;
    final width = MediaQuery
        .of(context)
        .size
        .width * 1;



    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Order Type', style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700, fontSize: 18),),

                      DropdownButton(
                          value: dropDownValue,
                          items: dropdownItems.map((String dropdownItems) {
                            return DropdownMenuItem(
                              value: dropdownItems,
                              child: Text(dropdownItems),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropDownValue = newValue!;
                            });
                          })
                    ]
                ),
                // SizedBox(height: 10,),
                Row(
                  children: [
                    Container(
                      width: width * 0.6,
                      height: height * 0.05,
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText:'Search Here',
                            hintStyle: GoogleFonts.poppins(color: Colors.grey),
                            prefixIcon: Icon(
                              Icons.search, color: primarycolor, size: 30,),
                          focusedBorder: outr,
                          enabledBorder: outr,
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20,),
                Container(
                 child:  Image.asset('assets/images/paste.jpg')
                )
              ],
            ),
          ),
        )
    );
  }
}
