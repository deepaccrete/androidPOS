import 'package:flutter/material.dart';
import 'package:foodchow/componets/Button.dart';
import 'package:foodchow/componets/Textform.dart';
import 'package:foodchow/constant/color.dart';
import 'package:google_fonts/google_fonts.dart';

class DayWisebyDaily extends StatefulWidget {
  const DayWisebyDaily({super.key});

  @override
  State<DayWisebyDaily> createState() => _DayWisebyDailyState();
}

class _DayWisebyDailyState extends State<DayWisebyDaily> {
  DateTime? _fromDate;

  // Function to show the Date Picker
  Future<void> _pickDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2100));

    if (pickedDate != null) {
      setState(() {
        _fromDate = pickedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          // color: Colors.green,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text(
                'Select Date:',
                style: GoogleFonts.poppins(
                  fontSize: 18, fontWeight: FontWeight.w500,),
              ),

              // date picker
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      _pickDate(context);
                    },
                    child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        width: width * 0.6,
                        height: height * 0.05,
                        decoration: BoxDecoration(
                            border: Border.all(color: primarycolor),
                            // color: Colors.red,
                            borderRadius: BorderRadius.circular(15)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              _fromDate == null
                                  ? ' DD/MM/yyyy'
                                  : '${_fromDate!.day}/${_fromDate!.month}/${_fromDate!.year}',
                            ),
                            Icon(Icons.date_range,color: primarycolor)
                          ],
                        )),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: primarycolor,
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: Icon(
                      Icons.search,
                      size: 25,
                      color: Colors.white,
                    ),
                  )
                ],
              ),

              SizedBox(
                height: 20,
              ),
              // Export TO Excel
              CommonButton(
                  width: width * 0.6,
                  height: height * 0.06,
                  bordercircular: 5,
                  onTap: () {},
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
              // tabel
              Column(
                children: [
                  Container(
                    height: height * 0.3,
                    // color: Colors.red,
                    child: Column(
                      children: [
                        // Container(
                        //     padding: EdgeInsets.all(5),
                        //     width: width,
                        //     height: height * 0.06,
                        //     decoration: BoxDecoration(
                        //       //color: Colors.red,
                        //        color: Colors.grey.shade300,
                        //       borderRadius: BorderRadius.circular(12),
                        //     ),
                        //     child: Row(
                        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //       children: [
                        //         Text(
                        //           'Types Of Order',
                        //           style: GoogleFonts.poppins(
                        //               fontWeight: FontWeight.w500, fontSize: 16),
                        //         ),
                        //         Text(
                        //           'Numbers Of \n Orders',
                        //           textAlign: TextAlign.center,
                        //           style: GoogleFonts.poppins(
                        //               fontWeight: FontWeight.w500, fontSize: 16),
                        //         ),
                        //
                        //         Text(
                        //           'Total \n Amount(Rs.)',
                        //           style: GoogleFonts.poppins(
                        //               fontWeight: FontWeight.w500, fontSize: 16),textAlign: TextAlign.center,
                        //         ),
                        //       ],
                        //     )),
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
                                  child: Text("Type of Order",textAlign: TextAlign.center,style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold, color: Colors.black)),
                                )),


                            // DataColumn(label: Container(
                            //   decoration: BoxDecoration(
                            //     color: Colors.grey.shade300,
                            //   ),
                            //   alignment: Alignment.center,
                            //   width: width * 0.25,
                            //   // height: height * 0.05,
                            //   child: Text("Item Name",style: GoogleFonts.poppins(
                            //       fontWeight: FontWeight.bold, color: Colors.black)),
                            // )),
                            DataColumn(label: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                              ),
                              alignment: Alignment.center,
                              width: width * 0.3,
                              // height: height * 0.05,
                              child: Text("Number of \n  orders ",style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold, color: Colors.black),textAlign: TextAlign.center,),
                            )),

                            DataColumn(label: Container(

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topRight:Radius.circular(10),bottomRight:Radius.circular(10) ),

                                color: Colors.grey.shade300,
                              ),
                              alignment: Alignment.center,
                              width: width * 0.3,
                              // height: height * 0.05,
                              child: Text("Total \n Amount(Rs.) ",style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold, color: Colors.black),textAlign: TextAlign.center,),
                            )),
                          ],

                          rows: [

                            // DataRow(cells: [
                            //   DataCell(Center(child: Text("1"))),
                            //   DataCell(Center(child: Text("Guest"))),
                            //   DataCell(Center(child: Text("-",textAlign: TextAlign.center,))),
                            //   DataCell(Center(child: Text("-",textAlign: TextAlign.center,))),
                            //
                            // ]),
                            // DataRow(
                            //
                            //     cells: [
                            //
                            //       DataCell(Center(child: Text("2"))),
                            //       DataCell(Center(child: Text("Guest"))),
                            //       DataCell(Center(child: Text("-",textAlign: TextAlign.center,))),
                            //       DataCell(Center(child: Text("-",textAlign: TextAlign.center,))),
                            //
                            //     ])
                          ],
                        ),

                        SizedBox(height: 25),
                        Text('NO Data Available')
                      ],
                    ),
                  ),
                  Container(
                    height: height * 0.3,
                    // color: Colors.red,
                    child: Column(
                      children: [
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
                                  width: width * 0.4,
                                  // height: height * 0.05,
                                  child: Text("type of Paymnet",textAlign: TextAlign.center,style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold, color: Colors.black)),
                                )),

                            DataColumn(label: Container(

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topRight:Radius.circular(10),bottomRight:Radius.circular(10) ),

                                color: Colors.grey.shade300,
                              ),
                              alignment: Alignment.center,
                              width: width * 0.4,
                              // height: height * 0.05,
                              child:Text("Total Amount(Rs)",style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold, color: Colors.black)),
                            )),
                          ],

                          rows: [

                            // DataRow(cells: [
                            //   DataCell(Center(child: Text("1"))),
                            //   DataCell(Center(child: Text("Guest"))),
                            //   DataCell(Center(child: Text("-",textAlign: TextAlign.center,))),
                            //   DataCell(Center(child: Text("-",textAlign: TextAlign.center,))),
                            //
                            // ]),
                            // DataRow(
                            //
                            //     cells: [
                            //
                            //       DataCell(Center(child: Text("2"))),
                            //       DataCell(Center(child: Text("Guest"))),
                            //       DataCell(Center(child: Text("-",textAlign: TextAlign.center,))),
                            //       DataCell(Center(child: Text("-",textAlign: TextAlign.center,))),
                            //
                            //     ])
                          ],
                        ),
                        SizedBox(height: 25),
                        Text('NO DAta Available')
                      ],
                    ),
                  ),
                ],
              ),


              // table
              // Container(
              //   width: double.infinity,
              //   // alignment: Alignment.centerLeft, // Align everything to the left
              //   color: Colors.red,
              //   child: SingleChildScrollView(
              //     scrollDirection: Axis.horizontal,
              //     child: DataTable(
              //       headingRowHeight: 40, // Ensures uniform row height
              //       dataRowMaxHeight: 40,
              //       columnSpacing: 2, // Ensure no extra gaps
              //       columns: [
              //         DataColumn(
              //           headingRowAlignment:MainAxisAlignment.start,
              //           label: Container(
              //     // padding: EdgeInsets.only(right: 8),
              //             decoration: BoxDecoration(
              //               color: Colors.grey.shade300,
              //               borderRadius: BorderRadius.only(
              //                 topLeft: Radius.circular(10),
              //                 bottomLeft: Radius.circular(10),
              //               ),
              //             ),
              //             alignment: Alignment.center,
              //             width: width * 0.30,
              //
              //             height: 40, // Consistent height
              //             child: Text(
              //               "Type of Order",
              //               textAlign: TextAlign.center,
              //               style: GoogleFonts.poppins(
              //                 fontWeight: FontWeight.bold,
              //                 color: Colors.black,
              //               ),
              //             ),
              //           ),
              //         ),
              //         DataColumn(
              //           label: Container(
              //             decoration: BoxDecoration(color: Colors.grey.shade300),
              //             alignment: Alignment.center,
              //             width: width * 0.30,
              //             height: 40,
              //             child: Text(
              //               "Numbers of \n Orders",
              //               textAlign: TextAlign.center,
              //               style: GoogleFonts.poppins(
              //                 fontWeight: FontWeight.bold,
              //                 color: Colors.black,
              //               ),
              //             ),
              //           ),
              //         ),
              //         DataColumn(
              //           label: Container(
              //             decoration: BoxDecoration(
              //                 color: Colors.grey.shade300,
              //               borderRadius: BorderRadius.only(
              //                 topRight: Radius.circular(10),
              //                 bottomRight: Radius.circular(10),
              //               ),
              //             ),
              //             alignment: Alignment.center,
              //             width: MediaQuery.of(context).size.width * 0.3,
              //             height: 40,
              //             child: Text(
              //               "Total \n Amounts(Rs.)",
              //               textAlign: TextAlign.center,
              //               style: GoogleFonts.poppins(
              //                 fontWeight: FontWeight.bold,
              //                 color: Colors.black,
              //               ),
              //             ),
              //           ),
              //         ),
              //       ],
              //       rows: [],
              //     ),
              //   ),
              // ),

            ],
          ),
        ),
      ),
    );
  }
}
