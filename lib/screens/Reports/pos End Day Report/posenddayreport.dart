import 'package:flutter/material.dart';
import 'package:foodchow/constant/color.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../componets/Button.dart';

class Posenddayreport extends StatefulWidget {
  const Posenddayreport({super.key});

  @override
  State<Posenddayreport> createState() => _PosenddayreportState();
}

DateTime? _dateTime;
class _PosenddayreportState extends State<Posenddayreport> {
  List<String> userlist = [
    'Admin User',
    'James 1 ',
    'Aria Cyrus',
    'danial kin'
  ];
  String dropvalue = 'Admin User';

  Future<void> _pickDate (BuildContext context) async{
    DateTime? pickedDate = await showDatePicker(context: context,
        firstDate: DateTime(2000),
        lastDate: DateTime(2100));

    if(pickedDate != null){
      setState(() {
        _dateTime = pickedDate;
      });
    }

  }

  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;

    return Scaffold(
      appBar: AppBar(
          backgroundColor: primarycolor,
          title: Text('Pos End Day Report',
              style: GoogleFonts.poppins(
                color: Colors.white,
              )),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios, color: Colors.white))),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            Text(
              'End Day Report',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700, fontSize: 18),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Select User:',
              style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 10,
            ),
            // dropdownbutton
            Container(
              width: width * 0.5,
              height: height *0.05,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5)),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                    // dropdownColor: primarycolor,
                    value: dropvalue,
                    items: userlist.map((String items) {
                      return DropdownMenuItem(
                          value: items,
                          child: Text(
                            items,textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(color: primarycolor,fontSize: 14),
                          ));
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropvalue = newValue!;
                      });
                    }),
              ),
            ),

                SizedBox(height: 25,),

                Row(
                  children: [
                    InkWell(
                      onTap: (){
                        _pickDate(context);
                      },
                      child: Container(
                        width: width * 0.4,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(color: primarycolor),
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(_dateTime ==null?
                            'DD/MM/YYYY'
                                : '${_dateTime!.day}/${_dateTime!.month}/${_dateTime!.year}'
                            ),
                            Icon(Icons.date_range,color: primarycolor,)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 25,),
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
                            width: width * 0.3,
                            height: height * 0.05,
                            child: Text("Opening Date",textAlign: TextAlign.center,style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold, color: Colors.black)),
                          )),
                      DataColumn(

                          label: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                            ),
                            alignment: Alignment.center,
                            width: width * 0.3,
                            height: height * 0.05,
                            child: Text("Closing Date",style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold, color: Colors.black)),
                          )),

                      DataColumn(label: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                        ),
                        alignment: Alignment.center,
                        width: width * 0.4,
                        height: height * 0.05,
                        child: Text("Opning Balance \n(Rs)",textAlign: TextAlign.center,style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold, color: Colors.black)),
                      )),
                      DataColumn(label: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                        ),
                        alignment: Alignment.center,
                        width: width * 0.3,
                        height: height * 0.05,
                        child:  Text("Closing Balance \n(Rs)",textAlign: TextAlign.center,style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold, color: Colors.black)),
                      )),
                      DataColumn(label: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                        ),
                        alignment: Alignment.center,
                        width: width * 0.4,
                        height: height * 0.05,
                        child:Text("Actual Cash",style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold, color: Colors.black)),
                      )),
                      DataColumn(label: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                        ),
                        alignment: Alignment.center,
                        width: width * 0.3,
                        height: height * 0.05,
                        child: Text("Cash (RS)",style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold, color: Colors.black)),
                      )),
                      DataColumn(label: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                        ),
                        alignment: Alignment.center,
                        width: width * 0.4,
                        height: height * 0.05,
                        child: Text("Card (Rs.)",style: GoogleFonts.poppins(
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
                        child:Text("Online(Rs)",style: GoogleFonts.poppins(
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
          ]),
        ),
      ),
    );
  }
}
