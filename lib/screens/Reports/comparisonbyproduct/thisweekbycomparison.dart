import 'package:flutter/material.dart';
import 'package:foodchow/componets/Button.dart';
import 'package:foodchow/componets/Textform.dart';
import 'package:foodchow/constant/color.dart';
import 'package:google_fonts/google_fonts.dart';

class ThisWeekbyComparison extends StatefulWidget {
  const ThisWeekbyComparison({super.key});

  @override
  State<ThisWeekbyComparison> createState() => _ThisWeekbyComparisonState();
}

class _ThisWeekbyComparisonState extends State<ThisWeekbyComparison> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text('Comparison of Current Week with Previous \n Week',style: GoogleFonts.poppins(fontWeight:FontWeight.w500,fontSize: 16),),
              SizedBox(height: 10,),
              CommonButton(
                  width: width * 0.6,
                  height: height * 0.06,
                  bordercircular: 5,
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.note_add_outlined,
                        color: Colors.white,
                      ),
                      Text(
                        'Export TO Excel',
                        style: GoogleFonts.poppins(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      )
                    ],
                  )),

              SizedBox(
                height: 25,
              ),

              // Container(
              //     padding: EdgeInsets.all(5),
              //     width: width,
              //     height: height * 0.06,
              //     decoration: BoxDecoration(
              //       color: Colors.grey.shade300,
              //       borderRadius: BorderRadius.circular(12),
              //     ),
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //         Text(
              //           'Data',
              //           style: GoogleFonts.poppins(
              //               fontWeight: FontWeight.w500, fontSize: 16),
              //         ),
              //         Text(
              //           'Item Name',
              //           textAlign: TextAlign.center,
              //           style: GoogleFonts.poppins(
              //               fontWeight: FontWeight.w500, fontSize: 16),
              //         ),
              //         Text(
              //           'Quantity',
              //           style: GoogleFonts.poppins(
              //               fontWeight: FontWeight.w500, fontSize: 16),
              //           textAlign: TextAlign.center,
              //         ),
              //         Text(
              //           'Total(Rs.)',
              //           style: GoogleFonts.poppins(
              //               fontWeight: FontWeight.w500, fontSize: 16),
              //         ),
              //       ],
              //     ))

              // table
              DataTable(

                columnSpacing: 3,
                decoration: BoxDecoration(
                  // color: Colors.grey.shade300,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(20)
                ),
                border: TableBorder.all(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.transparent),
                columns: [

                  DataColumn(
                      label: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.only(topLeft:Radius.circular(10),bottomLeft:Radius.circular(10) )
                        ),
                        alignment: Alignment.center,
                        width: width * 0.3,
                        // height: height * 0.05,
                        child: Text("Item Name",textAlign: TextAlign.center,style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600, color: Colors.black)),
                      )),


                  DataColumn(label: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                    ),
                    alignment: Alignment.center,
                    width: width * 0.3,
                    // height: height * 0.05,
                    child: Text("Previous Day \n Quantity",style: GoogleFonts.poppins(
                        fontWeight:FontWeight.w600, color: Colors.black)),
                  )),

                  DataColumn(label: Container(

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topRight:Radius.circular(10),bottomRight:Radius.circular(10) ),

                      color: Colors.grey.shade300,
                    ),
                    alignment: Alignment.center,
                    width: width * 0.3,
                    // height: height * 0.05,
                    child:Text("Current Day \n Quantity",style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600, color: Colors.black)),
                  )),
                ],

                rows: [

                  DataRow(cells: [
                    DataCell(Center(child: Text("Fruit Punch"))),
                    DataCell(Center(child: Text('2'))),
                    DataCell(Center(child: Text("0",textAlign: TextAlign.center,))),

                  ]),
                  // DataRow(
                  //
                  //     cells: [
                  //
                  //       DataCell(Center(child: Text("Total Amount"))),
                  //       DataCell(Center(child: Text("0.00"))),
                  //       DataCell(Center(child: Text("559.00",textAlign: TextAlign.center,))),
                  //
                  //     ])
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
