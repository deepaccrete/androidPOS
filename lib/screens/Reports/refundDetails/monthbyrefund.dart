import 'dart:core';

import 'package:flutter/material.dart';
import 'package:foodchow/constant/color.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../componets/Button.dart';

class Monthbyrefund extends StatefulWidget {
  const Monthbyrefund({super.key});

  @override
  State<Monthbyrefund> createState() => _MonthbyrefundState();
}

class _MonthbyrefundState extends State<Monthbyrefund> {
  List<String> monthitem =['January','February','March','April','May','June','July','August','September','Octomber','November','December',];
  List<dynamic> yearitem = [2025,2024,2023,2022,2021,2020,2019,2018,2017,2016];
  String dropDownValue1 = 'January';
  dynamic dropdownvalue2 = 2025;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Select Month:',style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w600),),



                        Container(
                          padding: EdgeInsets.all(5),
                          width: width * 0.4,
                          height:  height * 0.04,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: primarycolor)
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              value: dropDownValue1,
                                items: monthitem.map((String items){
                                  return DropdownMenuItem(
                                      value: items,
                                      child: Text(items));
                                }).toList(),
                                onChanged: (String? newValue){
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
                        Text('Select Year:',style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 16 ),),

                        Container(
                          width:  width *0.4,
                          height: height *0.04,
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            border: Border.all(color: primarycolor),
                            borderRadius: BorderRadius.circular(5)
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              value: dropdownvalue2,
                                items: yearitem.map((dynamic items){
                              return DropdownMenuItem(
                                  value: items,
                                  child: Text(items.toString()) );
                            }).toList(),
                                onChanged: (dynamic? newValue){
                                setState(() {
                                  dropdownvalue2 = newValue!;
                                });
                                }),
                          ),
                        )

                      ],
                    ),
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
              SizedBox(height: 25,),
              CommonButton(
                  width:width * 0.5 ,
                  height: height * 0.07,
                  bordercircular: 5,
                  onTap: (){},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.note_add_outlined,color: Colors.white,),
                      Text('Export TO Excel',style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.w500),)
                    ],)),

              SizedBox(height: 25,),


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
                      child:Text("Payment Type",style: GoogleFonts.poppins(
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
                      child: Text("Refund (Rs.)",style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold, color: Colors.black)),
                    )),
                    DataColumn(label: Container(

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topRight:Radius.circular(10),bottomRight:Radius.circular(10) ),

                        color: Colors.grey.shade300,
                      ),
                      alignment: Alignment.center,
                      width: width * 0.4,
                      height: height * 0.05,
                      child:Text("Resone",style: GoogleFonts.poppins(
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
