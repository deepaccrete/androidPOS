import 'package:flutter/material.dart';
import 'package:foodchow/componets/Button.dart';
import 'package:foodchow/componets/Textform.dart';
import 'package:foodchow/constant/color.dart';
import 'package:google_fonts/google_fonts.dart';

class ThisWeekItems extends StatefulWidget {
  const ThisWeekItems({super.key});

  @override
  State<ThisWeekItems> createState() => _ThisWeekItemsState();
}

class _ThisWeekItemsState extends State<ThisWeekItems> {
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

              Container(
                width: width * 0.6,
                child: CommonTextForm(

                    hintText: "Search Item",
                    HintColor: Colors.grey,
                    icon: Icon(Icons.search,color: primarycolor,size: 30,),
                    obsecureText: false),
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
                    child: Text("Quantity",style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold, color: Colors.black)),
                  )),

                  DataColumn(label: Container(

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topRight:Radius.circular(10),bottomRight:Radius.circular(10) ),

                      color: Colors.grey.shade300,
                    ),
                    alignment: Alignment.center,
                    width: width * 0.3,
                    // height: height * 0.05,
                    child:Text("Total(Rs.)",style: GoogleFonts.poppins(
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
              )

            ],
          ),
        ),
      ),
    );
  }
}
