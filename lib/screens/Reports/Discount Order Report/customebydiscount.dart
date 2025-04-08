import 'package:flutter/material.dart';
import 'package:foodchow/componets/Textform.dart';
import 'package:foodchow/constant/color.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../componets/Button.dart';

class CustomByDiscount extends StatefulWidget {
  const CustomByDiscount({super.key});

  @override
  State<CustomByDiscount> createState() => _CustomByDiscountState();
}

class _CustomByDiscountState extends State<CustomByDiscount> {
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
                            Icon(Icons.date_range,color: primarycolor,)
                          ],
                        )),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
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
                      ),
                    ],
                  ),
                  // SizedBox(height: 25,),
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
                            Icon(Icons.date_range,color: primarycolor,)
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
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child:DataTable(
                  columnSpacing: 5,
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
                          width: width * 0.2,
                          height: height * 0.05,
                          child: Text("Date",textAlign: TextAlign.center,style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold, color: Colors.black)),
                        )),
                    DataColumn(

                        label: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                          ),
                          alignment: Alignment.center,
                          width: width * 0.2,
                          height: height * 0.05,
                          child: Text("Order ID",style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold, color: Colors.black)),
                        )),

                    DataColumn(label: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                      ),
                      alignment: Alignment.center,
                      width: width * 0.4,
                      height: height * 0.05,
                      child: Text("Customber Name",style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold, color: Colors.black)),
                    )),
                    DataColumn(label: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                      ),
                      alignment: Alignment.center,
                      width: width * 0.3,
                      height: height * 0.05,
                      child: Text("Mobile No",style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold, color: Colors.black)),
                    )),
                    DataColumn(label: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                      ),
                      alignment: Alignment.center,
                      width: width * 0.4,
                      height: height * 0.05,
                      child:Text("Payment Method",style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold, color: Colors.black)),
                    )),
                    DataColumn(label: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                      ),
                      alignment: Alignment.center,
                      width: width * 0.3,
                      height: height * 0.05,
                      child: Text("Order Type",style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold, color: Colors.black)),
                    )),
                    DataColumn(label: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                      ),
                      alignment: Alignment.center,
                      width: width * 0.4,
                      height: height * 0.05,
                      child: Text("Total Amount(Rs.)",style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold, color: Colors.black)),
                    )),
                    DataColumn(label: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                      ),
                      alignment: Alignment.center,
                      width: width * 0.2,
                      height: height * 0.05,
                      child: Text("Status",style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold, color: Colors.black)),
                    )),
                    DataColumn(label: Container(

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topRight:Radius.circular(10),bottomRight:Radius.circular(10) ),

                        color: Colors.grey.shade300,
                      ),
                      alignment: Alignment.center,
                      width: width * 0.3,
                      height: height * 0.05,
                      child:Text("Details",style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold, color: Colors.black)),
                    )),
                  ], rows: [

                ],

                  // rows: [
                  //   DataRow(cells: [
                  //     DataCell(Center(child: Text("26-3-2025"))),
                  //     DataCell(Center(child: Text("POS01-001"))),
                  //     DataCell(Center(child: Text("Guest",textAlign: TextAlign.center,))),
                  //     DataCell(Center(child: Text("-"))),
                  //     DataCell(Center(child: Text("Cash"))),
                  //     DataCell(Center(child: Text("Take Away"))),
                  //     DataCell(Center(child: Text("205"))),
                  //     DataCell(
                  //         CommonButton(
                  //
                  //           bordercircular: 20,
                  //           width: width * 0.2,
                  //           height: height * 0.04,
                  //           child: Text('ITEMS',style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
                  //           onTap: (){},
                  //         )),
                  //   ]),
                  //   DataRow(
                  //
                  //       cells: [
                  //         DataCell(Center(child: Text("26-3-2025"))),
                  //         DataCell(Center(child: Text("POS01-001"))),
                  //         DataCell(Center(child: Text("Guest",textAlign: TextAlign.center,))),
                  //         DataCell(Center(child: Text("-"))),
                  //         DataCell(Center(child: Text("Cash"))),
                  //         DataCell(Center(child: Text("Take Away"))),
                  //         DataCell(Center(child: Text("205"))),
                  //         DataCell(
                  //             CommonButton(
                  //
                  //               bordercircular: 20,
                  //               width: width * 0.2,
                  //               height: height * 0.04,
                  //               child: Text('ITEMS',style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
                  //               onTap: (){},
                  //             )),
                  //       ])
                  // ],
                ),


              )

            ],
          ),
        ),
      ),
    );
  }
}
