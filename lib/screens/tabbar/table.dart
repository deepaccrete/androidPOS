import 'package:flutter/material.dart';
import 'package:foodchow/componets/Button.dart';
import 'package:foodchow/constant/color.dart';
import 'package:google_fonts/google_fonts.dart';

class TableScreen extends StatelessWidget {
  const TableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //  Table Syncbutton
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Table Layout",
                    style: GoogleFonts.poppins(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  CommonButton(
                      bordercircular: 0,
                      width: width * 0.3,
                      height: height * 0.04,
                      onTap: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.sync,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Sync Table',
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
                alignment: Alignment.topLeft,
                child: CommonButton(
                    bordercircular: 0,
                    width: width * 0.3,
                    height: height * 0.04,
                    onTap: () {},
                    child: Row(
                      children: [
                        Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Add Table',
                          style: GoogleFonts.poppins(color: Colors.white),
                        )
                      ],
                    )),
              ),
              SizedBox(
                height: 25,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.circle,
                    color: Colors.green,
                    size: 10,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Available',
                    style:
                        GoogleFonts.poppins(color: Colors.green, fontSize: 15),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Icon(
                    Icons.circle,
                    color: Colors.orange,
                    size: 10,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Reserved',
                    style: GoogleFonts.poppins(fontSize: 15),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Icon(
                    Icons.circle,
                    color: Colors.red,
                    size: 10,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Cooking',
                    style: GoogleFonts.poppins(color: Colors.red, fontSize: 15),
                  )
                ],
              ),

              Container(
                height: height * 0.5,
                width: width,
                // color: Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    border: Border(
                                        left: BorderSide(color: Colors.green),
                                        top: BorderSide(color: Colors.green),
                                        right:
                                            BorderSide(color: Colors.green))),
                                width: width * 0.25,
                                height: height * 0.02,
                                child: Text(
                                  'Available',
                                  style:
                                      GoogleFonts.poppins(color: Colors.green),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: width * 0.35,
                                height: height * 0.12,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(color: Colors.green)),
                                child: Text(
                                  'T-1',
                                  style: GoogleFonts.poppins(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    border: Border(
                                        left: BorderSide(color: Colors.green),
                                        top: BorderSide(color: Colors.green),
                                        right:
                                            BorderSide(color: Colors.green))),
                                width: width * 0.25,
                                height: height * 0.02,
                                child: Text(
                                  'Available',
                                  style:
                                      GoogleFonts.poppins(color: Colors.green),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: width * 0.35,
                                height: height * 0.12,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(color: Colors.green)),
                                child: Text(
                                  'T-2',
                                  style: GoogleFonts.poppins(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    border: Border(
                                        left: BorderSide(color: Colors.green),
                                        top: BorderSide(color: Colors.green),
                                        right:
                                            BorderSide(color: Colors.green))),
                                width: width * 0.25,
                                height: height * 0.02,
                                child: Text(
                                  'Available',
                                  style:
                                      GoogleFonts.poppins(color: Colors.green),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: width * 0.35,
                                height: height * 0.12,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(color: Colors.green)),
                                child: Text(
                                  'T-3',
                                  style: GoogleFonts.poppins(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    border: Border(
                                        left: BorderSide(color: Colors.green),
                                        top: BorderSide(color: Colors.green),
                                        right:
                                            BorderSide(color: Colors.green))),
                                width: width * 0.25,
                                height: height * 0.02,
                                child: Text(
                                  'Available',
                                  style:
                                      GoogleFonts.poppins(color: Colors.green),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: width * 0.35,
                                height: height * 0.12,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(color: Colors.green)),
                                child: Text(
                                  'T-?',
                                  style: GoogleFonts.poppins(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
