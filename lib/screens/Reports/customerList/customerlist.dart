import 'package:flutter/material.dart';
import 'package:foodchow/componets/Button.dart';
import 'package:foodchow/componets/Textform.dart';
import 'package:foodchow/constant/color.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomerListReport extends StatefulWidget {
  const CustomerListReport({super.key});

  @override
  State<CustomerListReport> createState() => _CustomerListReportState();
}

class _CustomerListReportState extends State<CustomerListReport> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      appBar: AppBar(
        title: Text('Customer List Report',style: GoogleFonts.poppins(color: Colors.white),),
        centerTitle: true,
        backgroundColor: primarycolor,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios,color: Colors.white,)),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              Text('Customer List',style: GoogleFonts.poppins(fontWeight:FontWeight.w600,fontSize: 18),),

              SizedBox(height: 25,),
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

              // Container(
              //     padding: EdgeInsets.all(10),
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
              //           'Sr no',
              //           style: GoogleFonts.poppins(
              //               fontWeight: FontWeight.w500, fontSize: 16),
              //         ),
              //         Text(
              //           'Customer Name',
              //           textAlign: TextAlign.center,
              //           style: GoogleFonts.poppins(
              //               fontWeight: FontWeight.w500, fontSize: 16),
              //         ),
              //         Text(
              //           'Mobile',
              //           style: GoogleFonts.poppins(
              //               fontWeight: FontWeight.w500, fontSize: 16),
              //         ),
              //       ],
              //     )),
              // Container(
              //   padding: EdgeInsets.all(15),
              //   width: width,
              //   height: height * 0.06,
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //
              //     children: [
              //     Text('1'),
              //     Text('Guest'),
              //     Text('-')
              //   ],),
              // )

              // table
              // DataTable(
              //
              //   columnSpacing: 3,
              //   decoration: BoxDecoration(
              //     // color: Colors.grey.shade300,
              //       shape: BoxShape.rectangle,
              //       borderRadius: BorderRadius.circular(20)
              //   ),
              //   border: TableBorder.all(
              //       borderRadius: BorderRadius.circular(5),
              //       color: Colors.transparent),
              //   columns: [
              //
              //     DataColumn(
              //         label: Container(
              //           decoration: BoxDecoration(
              //               color: Colors.grey.shade300,
              //               borderRadius: BorderRadius.only(topLeft:Radius.circular(10),bottomLeft:Radius.circular(10) )
              //           ),
              //           alignment: Alignment.center,
              //           width: width * 0.2,
              //           // height: height * 0.05,
              //           child: Text("Sr No",textAlign: TextAlign.center,style: GoogleFonts.poppins(
              //               fontWeight: FontWeight.bold, color: Colors.black)),
              //         )),
              //
              //
              //     DataColumn(label: Container(
              //       decoration: BoxDecoration(
              //         color: Colors.grey.shade300,
              //       ),
              //       alignment: Alignment.center,
              //       width: width * 0.4,
              //       // height: height * 0.05,
              //       child: Text("Customber Name",style: GoogleFonts.poppins(
              //           fontWeight: FontWeight.bold, color: Colors.black)),
              //     )),
              //
              //     DataColumn(label: Container(
              //
              //       decoration: BoxDecoration(
              //         borderRadius: BorderRadius.only(topRight:Radius.circular(10),bottomRight:Radius.circular(10) ),
              //
              //         color: Colors.grey.shade300,
              //       ),
              //       alignment: Alignment.center,
              //       width: width * 0.3,
              //       // height: height * 0.05,
              //       child:Text("Mobile",style: GoogleFonts.poppins(
              //           fontWeight: FontWeight.bold, color: Colors.black)),
              //     )),
              //   ],
              //
              //   rows: [
              //
              //     DataRow(cells: [
              //       DataCell(Center(child: Text("1"))),
              //       DataCell(Center(child: Text("Guest"))),
              //       DataCell(Center(child: Text("-",textAlign: TextAlign.center,))),
              //
              //     ]),
              //     DataRow(
              //
              //         cells: [
              //
              //           DataCell(Center(child: Text("2"))),
              //           DataCell(Center(child: Text("Guest"))),
              //           DataCell(Center(child: Text("-",textAlign: TextAlign.center,))),
              //
              //         ])
              //   ],
              // ),
              
              SizedBox(height: 25,
              ),
              
              Container(
                decoration: BoxDecoration(
                  color: Colors.red[200],
                  // borderRadius: BorderRadiusDirectional.only(topStart: Radius.circular(50),bottomStart: Radius.circular(15)),

                ),
                child: SingleChildScrollView(
                  child: DataTable(
                    columnSpacing: 20,
                      headingRowColor: WidgetStateProperty.all(Colors.grey[300]),
                      border: TableBorder.all(color: Colors.white),
                      decoration: BoxDecoration(
                        // borderRadius:BorderRadiusDirectional.only(topStart: Radius.circular(15),bottomStart: Radius.circular(15)),
                        color: Colors.green,

                      ),
                      columns: [

                    DataColumn(
                      columnWidth:FixedColumnWidth(width *0.2),

                        label: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                            ),

                            child: Text('sr no '))),
                    DataColumn(
                        headingRowAlignment: MainAxisAlignment.center,
                        // columnWidth:FlexColumnWidth(width * 0.1),
                    label: Center(child: Text("Customer Name"))),
                    DataColumn(label: Text('Mobile'))
                  ], rows: []),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
