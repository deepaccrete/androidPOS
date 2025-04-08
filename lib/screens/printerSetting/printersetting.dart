import 'package:flutter/material.dart';
import 'package:foodchow/componets/Button.dart';
import 'package:foodchow/constant/color.dart';
import 'package:foodchow/screens/printerSetting/addprinter/addprinter.dart';
import 'package:google_fonts/google_fonts.dart';

class Printersetting extends StatefulWidget {
  const Printersetting({super.key});

  @override
  State<Printersetting> createState() => _PrintersettingState();
}

class _PrintersettingState extends State<Printersetting> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 1;
    final height = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      appBar: AppBar(
        title: Text('Printer Setting'),
        leading: BackButton(),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(children: [
            Container(
              padding: EdgeInsets.all(5),
              decoration:
                  BoxDecoration(border: Border.all(color: primarycolor)),
              width: width,
              height: height * 0.3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.list_alt,
                      size: 50, color: Colors.deepOrangeAccent),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Manually Print',
                          style: GoogleFonts.poppins(
                              fontSize: 20, fontWeight: FontWeight.w600)),
                      Text(
                          'Tou can print KOT and order bill \nmanually by clicking Print KOT\nand Print Bill',
                          style: GoogleFonts.poppins(fontSize: 12))
                    ],
                  ),
                  // SizedBox(width: 20,),
                  Icon(
                    Icons.check_circle_rounded,
                    color: primarycolor,
                    size: 50,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              padding: EdgeInsets.all(5),
              decoration:
                  BoxDecoration(border: Border.all(color: primarycolor)),
              width: width,
              height: height * 0.3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.settings,
                      size: 50, color: Colors.deepOrangeAccent),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Auto Print',
                          style: GoogleFonts.poppins(
                              fontSize: 20, fontWeight: FontWeight.w600)),
                      Text(
                          'Your Order KOt Will print Automaticaly \nas soon as new order placed \nas soon as new order Settled',
                          style: GoogleFonts.poppins(fontSize: 12))
                    ],
                  ),
                  // SizedBox(width: 20,),
                  Icon(
                    Icons.check_circle_rounded,
                    color: primarycolor,
                    size: 50,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            // printer details
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Printer Detail',
                    style: GoogleFonts.poppins(
                        fontSize: 20, fontWeight: FontWeight.w600)),
                CommonButton(
                    bordercircular: 0,
                    width: width * 0.3,
                    height: height * 0.08,
                    onTap: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.refresh,
                          color: Colors.white,
                        ),
                        Text(
                          'Refresh',
                          style: GoogleFonts.poppins(color: Colors.white),
                        )
                      ],
                    ))
              ],
            ),

            SizedBox(
              height: 25,
            ),
            Container(
              // color: Colors.red,
              height: height * 0.7,
              child: Column(
                children: [
                  Card(
                    elevation: 10,
                    child: Container(
                      alignment: Alignment.center,
                      width: width,
                      height: height * 0.3,
                      child: Text('No Printer Found',
                          style: GoogleFonts.poppins(
                              fontSize: 20, fontWeight: FontWeight.w600)),
                    ),
                  ),
                ],
              ),
            ),
            CommonButton(
                borderwidth: 0,
                bordercolor: Colors.grey.shade300,
                bgcolor: Colors.grey.shade300,
                width: width * 0.6,
                height: height * 0.2,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AddPrinter()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        )),
                    SizedBox(
                      width: 5,
                    ),
                    Text('Add Printer',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600))
                  ],
                ))
          ]),
        ),
      ),
    );
  }
}
