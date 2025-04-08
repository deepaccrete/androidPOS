import 'package:flutter/material.dart';
import 'package:foodchow/componets/Textform.dart';
import 'package:foodchow/constant/color.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../componets/Button.dart';

class CustomeDaily extends StatefulWidget {
  const CustomeDaily({super.key});

  @override
  State<CustomeDaily> createState() => _CustomeDailyState();
}

class _CustomeDailyState extends State<CustomeDaily> {
  DateTime? _fromDate;
  DateTime? _toDate;

  // // Function to show the Date Picker
  // Future<void> _pickDate(BuildContext context) async {
  //   DateTime? pickedDate = await showDatePicker(
  //       context: context,
  //       initialDate: DateTime.now(),
  //       firstDate: DateTime(2000),
  //       lastDate: DateTime(2100));
  //
  //   if (pickedDate != null) {
  //     setState(() {
  //       _fromDate = pickedDate;
  //     });
  //   }
  // }
  // Function to  pick "From Date"
  Future<void> _pickFromDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: _fromDate??DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2100));

    if (pickedDate != null) {
      setState(() {
        _fromDate = pickedDate;
        //   Ensure "To Date" is after "from Date"
        if(_toDate != null && _toDate!.isBefore(_fromDate!)){
          _toDate =null;
        }
      });
    }
  }
  // Function to  pick To Date"
  Future<void> _pickToDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: _toDate?? _fromDate??DateTime.now(),
        firstDate: _fromDate?? DateTime(2000),
        lastDate: DateTime(2100));

    if (pickedDate != null) {
      setState(() {
        _toDate = pickedDate;
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
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'From Date:',
                    style: GoogleFonts.poppins(
                        fontSize: 18, fontWeight: FontWeight.w600),
                    textAlign: TextAlign.start,
                  ),
                  // Container(
                  //   width: width * 0.6,
                  //   height: height * 0.04,
                  //   child: CommonTextForm(
                  //     hintText: 'DD/MM/YYYY',
                  //     HintColor: Colors.grey,
                  //     gesture: Icon(Icons.date_range, color: primarycolor,),
                  //
                  //     BorderColor: primarycolor,
                  //     obsecureText: false,
                  //   ),
                  // ),

                  // date picker
                  // InkWell(
                  //   onTap: () {
                  //     _pickDate(context);
                  //   },
                  //   child: Container(
                  //       padding: EdgeInsets.symmetric(horizontal: 10),
                  //       width: width * 0.6,
                  //       height: height * 0.04,
                  //       decoration: BoxDecoration(
                  //         border: Border.all(color: primarycolor),
                  //         // color: Colors.red,
                  //         borderRadius: BorderRadius.circular(15)
                  //       ),
                  //       child: Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //         children: [
                  //           Text(
                  //             _fromDate == null
                  //                 ? ' DD/MM/yyyy'
                  //                 : '${_fromDate!.day}/${_fromDate!.month}/${_fromDate!.year}',
                  //           ),
                  //           Icon(Icons.date_range)
                  //         ],
                  //       )),
                  // ),
                  InkWell(
                    onTap: () {
                      _pickToDate(context);
                    },
                    child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        width: width * 0.6,
                        height: height * 0.05,
                        decoration: BoxDecoration(
                            border: Border.all(color: primarycolor),
                            // color: Colors.red,
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              _fromDate == null
                                  ? ' DD/MM/yyyy'
                                  : '${_fromDate!.day}/${_fromDate!.month}/${_fromDate!.year}',
                            ),
                            Icon(Icons.date_range)
                          ],
                        )),
                  ),


                  SizedBox(height: 25,),
                  Text(
                    'To Date:',
                    style: GoogleFonts.poppins(
                        fontSize: 18, fontWeight: FontWeight.w600),
                    textAlign: TextAlign.start,
                  ),
                  InkWell(
                    onTap: _fromDate ==null ? null: ()=> _pickToDate(context),

                    child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        width: width * 0.6,
                        height: height * 0.05,
                        decoration: BoxDecoration(
                            border: Border.all(color: primarycolor),
                            // color: Colors.red,
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              _toDate == null
                                  ? ' DD/MM/yyyy'
                                  : '${_toDate!.day}/${_toDate!.month}/${_toDate!.year}',
                            ),
                            Icon(Icons.date_range)
                          ],
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              // CommonButton
              CommonButton(
                  width: width * 0.5,
                  height: height * 0.07,
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

            ],
          ),
        ),
      ),
    );
  }
}
