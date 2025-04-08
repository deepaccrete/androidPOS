import 'package:flutter/material.dart';
import 'package:foodchow/componets/Button.dart';
import 'package:foodchow/componets/Textform.dart';
import 'package:foodchow/constant/color.dart';
import 'package:google_fonts/google_fonts.dart';

class MonthWisebyDaily extends StatefulWidget {
  const MonthWisebyDaily({super.key});

  @override
  State<MonthWisebyDaily> createState() => _MonthWisebyDailyState();
}

class _MonthWisebyDailyState extends State<MonthWisebyDaily> {
  List<String> monthitem = ['January', 'February','March', 'April', 'May','June', 'July', 'August','September','October','November','December'];
  List<dynamic> yearitem = [2025,2024,2023,2022,2021,2020,2019,2018,2017,2016];
  String dropDownValue1 = 'January';
  dynamic dropdownvalue2 = 2025 ;
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
        child:Container(
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [


              SizedBox(height: 20,),
              Row(
                children: [
                  Expanded(
                    // flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            child: Text('Select Month',style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w500),)),
                        SizedBox(height: 5,),
                        Container(

                          width: width * 0.4,
                          height: height * 0.04,
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              border: Border.all(color: primarycolor)
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                                value: dropDownValue1,
                                isExpanded: true,
                                items: monthitem.map((String items){
                                  return DropdownMenuItem(
                                      value: items,
                                      child: Text(items));
                                }).toList(), onChanged: (String? newValue){
                              setState(() {
                                dropDownValue1 = newValue!;
                              });
                            }),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text('Select Year',style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w500)),
                        SizedBox(height: 5,),

                        Container(
                          width: width * 0.4,
                          height: height * 0.04,
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              border: Border.all(color: primarycolor)
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                                value: dropdownvalue2,
                                isExpanded: true,
                                items: yearitem.map((dynamic items){
                                  return DropdownMenuItem(
                                      value: items,
                                      child: Text(items.toString()));
                                }).toList(), onChanged: (dynamic? newValue){
                              setState(() {
                                dropdownvalue2 = newValue!;
                              });
                            }),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20,width: 20,),
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
              SizedBox(height: 20,),
              CommonButton(
                  width: width * 0.6,
                  height: height * 0.06,
                  bordercircular: 5,
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.note_add_outlined, color: Colors.white,),
                      Text('Export TO Excel', style: GoogleFonts.poppins(
                          color: Colors.white, fontWeight: FontWeight.w500),)
                    ],)),

              SizedBox(height: 25,),
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

              // Column(
              //   children: [
              //     Container(
              //       height: height * 0.3,
              //       // color: Colors.red,
              //       child: Column(
              //         children: [
              //           Container(
              //               padding: EdgeInsets.all(5),
              //               width: width,
              //               height: height * 0.06,
              //               decoration: BoxDecoration(
              //                 //color: Colors.red,
              //                 color: Colors.grey.shade300,
              //                 borderRadius: BorderRadius.circular(12),
              //               ),
              //               child: Row(
              //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //                 children: [
              //                   Text(
              //                     'Types Of Order',
              //                     style: GoogleFonts.poppins(
              //                         fontWeight: FontWeight.w500, fontSize: 16),
              //                   ),
              //                   Text(
              //                     'Numbers Of \n Orders',
              //                     textAlign: TextAlign.center,
              //                     style: GoogleFonts.poppins(
              //                         fontWeight: FontWeight.w500, fontSize: 16),
              //                   ),
              //
              //                   Text(
              //                     'Total \n Amount(Rs.)',
              //                     style: GoogleFonts.poppins(
              //                         fontWeight: FontWeight.w500, fontSize: 16),textAlign: TextAlign.center,
              //                   ),
              //                 ],
              //               )),
              //           SizedBox(height: 25),
              //           Text('NO DAta Available')
              //         ],
              //       ),
              //     ),
              //     Container(
              //       height: height * 0.3,
              //       // color: Colors.red,
              //       child: Column(
              //         children: [
              //           Container(
              //               padding: EdgeInsets.all(5),
              //               width: width,
              //               height: height * 0.06,
              //               decoration: BoxDecoration(
              //                 //color: Colors.red,
              //                 color: Colors.grey.shade300,
              //                 borderRadius: BorderRadius.circular(12),
              //               ),
              //               child: Padding(
              //                 padding: const EdgeInsets.all(8.0),
              //                 child: Row(
              //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //                   children: [
              //                     Text(
              //                       'Types Of Order',
              //                       style: GoogleFonts.poppins(
              //                           fontWeight: FontWeight.w500, fontSize: 16),
              //                     ),
              //                     Text(
              //                       'Total Amount(Rs.)',
              //                       style: GoogleFonts.poppins(
              //                           fontWeight: FontWeight.w500, fontSize: 16),textAlign: TextAlign.center,
              //                     ),
              //                   ],
              //                 ),
              //               )),
              //           SizedBox(height: 25),
              //           Text('NO DAta Available')
              //         ],
              //       ),
              //     ),
              //   ],
              // ),





              // table
              // Container(
              //   color: Colors.red,
              //   child: DataTable(
              //       columnSpacing: 0,
              //       columns: [
              //
              //     DataColumn(
              //         label: Container(
              //           decoration: BoxDecoration(
              //               color: Colors.grey.shade300,
              //               borderRadius: BorderRadius.only(topLeft: Radius
              //                   .circular(10),
              //                   bottomLeft: Radius.circular(10))
              //           ),
              //           alignment: Alignment.center,
              //           width: width * 0.2,
              //           height: height * 0.04,
              //           child: Text("Date", textAlign: TextAlign.center,
              //               style: GoogleFonts.poppins(
              //                   fontWeight: FontWeight.bold,
              //                   color: Colors.black)),
              //         )), DataColumn(
              //         label: Container(
              //           decoration: BoxDecoration(
              //               color: Colors.grey.shade300,
              //
              //           ),
              //           alignment: Alignment.center,
              //           width: width * 0.25,
              //           height: height * 0.04,
              //           child: Text("Item Name", textAlign: TextAlign.center,
              //               style: GoogleFonts.poppins(
              //                   fontWeight: FontWeight.bold,
              //                   color: Colors.black)),
              //         )), DataColumn(
              //         label: Container(
              //           decoration: BoxDecoration(
              //               color: Colors.grey.shade300,
              //
              //           ),
              //           alignment: Alignment.center,
              //           width: width * 0.25,
              //           height: height * 0.04,
              //           child: Text("Quality", textAlign: TextAlign.center,
              //               style: GoogleFonts.poppins(
              //                   fontWeight: FontWeight.bold,
              //                   color: Colors.black)),
              //         )), DataColumn(
              //         label: Container(
              //           decoration: BoxDecoration(
              //               color: Colors.grey.shade300,
              //
              //           ),
              //           alignment: Alignment.center,
              //           width: width * 0.25,
              //           height: height * 0.04,
              //           child: Text("Total (RS)", textAlign: TextAlign.center,
              //               style: GoogleFonts.poppins(
              //                   fontWeight: FontWeight.bold,
              //                   color: Colors.black)),
              //         )),
              //   ],
              //       rows:[]),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
