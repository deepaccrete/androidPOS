import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:foodchow/componets/Button.dart';
import 'package:foodchow/componets/drawermanage.dart';
import 'package:foodchow/constant/color.dart';
import 'package:foodchow/componets/mulTextFelids&userinfoPopUp.dart';
import 'package:foodchow/screens/auth/admin_login.dart';
import 'package:foodchow/screens/manage%20menu/managemenu.dart';
import 'package:foodchow/screens/manage%20menu/tab/Categoriestab.dart';
import 'package:foodchow/screens/manage%20menu/tab/Extratab.dart';
import 'package:foodchow/screens/manage%20menu/tab/all.dart';
import 'package:foodchow/screens/manage%20menu/tab/choicetab.dart';
import 'package:foodchow/screens/manage%20menu/tab/itemstab.dart';
import 'package:foodchow/screens/manage%20menu/tab/varianttab.dart';
import 'package:foodchow/screens/splashScreen.dart';
import 'package:foodchow/screens/startorder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

// final List<String> listNames = ["SATYAM ", "AYUSH", "PRICE", "VINIT"];

final int itemCount = 0;

class manageStaff extends StatefulWidget {
  const manageStaff({super.key});

  @override
  State<manageStaff> createState() => _manageStaffState();
}

class _manageStaffState extends State<manageStaff> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        shadowColor: Colors.black,
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.person),
                Text(
                  "Admin",
                  style: GoogleFonts.poppins(),
                ),
              ],
            ),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(padding: EdgeInsets.only(left: 1)),
              Text(
                "Staff Management",
                style: TextStyle(fontSize: 25.0),
              ),
              SizedBox(
                width: 20.0,
              ),
              //button of add staff
              ElevatedButton.icon(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Expanded(
                          child: AlertDialog(
                            icon: Icon(
                              Icons.person_add,
                              size: 3.0,
                              color: primarycolor,
                            ),
                            title: Text("Add Staff"),
                            actions: [
                              Column(
                                children: [
                                  Padding(padding: EdgeInsets.all(25)),
                                  Center(
                                    child: textFelids(
                                      hintText: "Enter User Name",
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 5, right: 5),
                                          child: textFelids(
                                            hintText: "Enter First Name",
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              right: 5, left: 5),
                                          child: textFelids(
                                            hintText: "Enter Last Name",
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Center(
                                      child: Column(
                                    children: [
                                      textFelids(hintText: "Enter Mobile No"),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      textFelids(hintText: "Enter Your Mail "),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      textFelids(hintText: "Enter pin code "),
                                      SizedBox(
                                        height: 20,
                                      ),
                                    ],
                                  )),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        height: 60,
                                        width: 150,
                                        child: TextButton(
                                            style: TextButton.styleFrom(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 20, vertical: 14),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                )),
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: Text(
                                              'Cancel',
                                              style: TextStyle(
                                                  color: primarycolor,
                                                  fontWeight: FontWeight.bold),
                                            )),
                                      ),
                                      SizedBox(
                                        height: 60,
                                        width: 100,
                                        child: TextButton(
                                            style: TextButton.styleFrom(
                                                backgroundColor: primarycolor,
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 20, vertical: 14),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4))),
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: Text(
                                              "Add",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            )),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        );
                      });
                },
                label: Text("add Staff"),
                icon: Icon(
                  Icons.person_add_alt,
                  color: primarycolor,
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                      side: BorderSide(color: primarycolor, width: 1)),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Card(
            elevation: 2,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Admin User1'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("ID 1234 "),
                      Row(
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                CustomUserInfoButton(
                                    userName: "username",
                                    mobileNumber: "12345679",
                                    email: "abcd@gmail.com")
                              ],
                            ),
                          ),
                        ],
                      ),

                      CommonButton(
                        width: 70.0,
                        height: 30.0,
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Icon(
                                    Icons.edit,
                                    size: 25.0,
                                    color: primarycolor,
                                  ),
                                  actions: [
                                    Column(
                                      children: [
                                        Padding(padding: EdgeInsets.all(25)),
                                        Center(
                                            child: ShowInputData(
                                          normalText: Text("satyam"),
                                        )),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5, right: 5),
                                                  child: ShowInputData(
                                                    normalText: Text("doe"),
                                                  )),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 5, left: 5),
                                                  child: ShowInputData(
                                                    normalText: Text("show"),
                                                  )),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Center(
                                            child: Column(
                                          children: [
                                            ShowInputData(
                                                normalText: Text("123456789")),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            ShowInputData(
                                              normalText: Text("abc@gmail.com"),
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                          ],
                                        )),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizedBox(
                                              height: 60,
                                              width: 150,
                                              child: TextButton(
                                                  style: TextButton.styleFrom(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 20,
                                                              vertical: 14),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4),
                                                      )),
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: Text(
                                                    'Cancel',
                                                    style: TextStyle(
                                                        color: primarycolor,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )),
                                            ),
                                            SizedBox(
                                              height: 60,
                                              width: 150,
                                              child: TextButton(
                                                  style: TextButton.styleFrom(
                                                      backgroundColor:
                                                          primarycolor,
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 20,
                                                              vertical: 14),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          4))),
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: Text(
                                                    "Add",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                );
                              });
                        },
                        child: Icon(Icons.add),
                      )

                      // ElevatedButton.icon(
                      // onPressed: () {
                      //   showDialog(
                      //       context: context,
                      //       builder: (BuildContext context) {
                      //         return AlertDialog(
                      //           title: Icon(
                      //             Icons.edit,
                      //             size: 25.0,
                      //             color: primarycolor,
                      //           ),
                      //           actions: [
                      //             Column(
                      //               children: [
                      //                 Padding(padding: EdgeInsets.all(25)),
                      //                 Center(
                      //                     child: ShowInputData(
                      //                   normalText: Text("satyam"),
                      //                 )),
                      //                 SizedBox(
                      //                   height: 20,
                      //                 ),
                      //                 Row(
                      //                   mainAxisAlignment:
                      //                       MainAxisAlignment.spaceEvenly,
                      //                   children: [
                      //                     Expanded(
                      //                       child: Padding(
                      //                           padding:
                      //                               const EdgeInsets.only(
                      //                                   left: 5, right: 5),
                      //                           child: ShowInputData(
                      //                             normalText: Text("doe"),
                      //                           )),
                      //                     ),
                      //                     Expanded(
                      //                       child: Padding(
                      //                           padding:
                      //                               const EdgeInsets.only(
                      //                                   right: 5, left: 5),
                      //                           child: ShowInputData(
                      //                             normalText: Text("show"),
                      //                           )),
                      //                     ),
                      //                   ],
                      //                 ),
                      //                 SizedBox(
                      //                   height: 20,
                      //                 ),
                      //                 Center(
                      //                     child: Column(
                      //                   children: [
                      //                     ShowInputData(
                      //                         normalText: Text("123456789")),
                      //                     SizedBox(
                      //                       height: 20,
                      //                     ),
                      //                     ShowInputData(
                      //                       normalText: Text("abc@gmail.com"),
                      //                     ),
                      //                     SizedBox(
                      //                       height: 20,
                      //                     ),
                      //                   ],
                      //                 )),
                      //                 SizedBox(
                      //                   height: 20,
                      //                 ),
                      //                 Row(
                      //                   mainAxisAlignment:
                      //                       MainAxisAlignment.spaceBetween,
                      //                   children: [
                      //                     SizedBox(
                      //                       height: 60,
                      //                       width: 150,
                      //                       child: TextButton(
                      //                           style: TextButton.styleFrom(
                      //                               padding:
                      //                                   EdgeInsets.symmetric(
                      //                                       horizontal: 20,
                      //                                       vertical: 14),
                      //                               shape:
                      //                                   RoundedRectangleBorder(
                      //                                 borderRadius:
                      //                                     BorderRadius
                      //                                         .circular(4),
                      //                               )),
                      //                           onPressed: () {
                      //                             Navigator.of(context).pop();
                      //                           },
                      //                           child: Text(
                      //                             'Cancel',
                      //                             style: TextStyle(
                      //                                 color: primarycolor,
                      //                                 fontWeight:
                      //                                     FontWeight.bold),
                      //                           )),
                      //                     ),
                      //                     SizedBox(
                      //                       height: 60,
                      //                       width: 150,
                      //                       child: TextButton(
                      //                           style: TextButton.styleFrom(
                      //                               backgroundColor:
                      //                                   primarycolor,
                      //                               padding:
                      //                                   EdgeInsets.symmetric(
                      //                                       horizontal: 20,
                      //                                       vertical: 14),
                      //                               shape:
                      //                                   RoundedRectangleBorder(
                      //                                       borderRadius:
                      //                                           BorderRadius
                      //                                               .circular(
                      //                                                   4))),
                      //                           onPressed: () {
                      //                             Navigator.of(context).pop();
                      //                           },
                      //                           child: Text(
                      //                             "Add",
                      //                             style: TextStyle(
                      //                                 color: Colors.white,
                      //                                 fontWeight:
                      //                                     FontWeight.bold),
                      //                           )),
                      //                     )
                      //                   ],
                      //                 )
                      //               ],
                      //             ),
                      //           ],
                      //         );
                      //       });
                      // },
                      // label: Icon(
                      //   Icons.edit,
                      //   color: primarycolor,
                      // ),
                      // style: ElevatedButton.styleFrom(
                      //   padding: EdgeInsets.symmetric(
                      //       horizontal: 20, vertical: 14),
                      //   shape: BeveledRectangleBorder(
                      //       borderRadius: BorderRadius.circular(4),
                      //       side: BorderSide(color: primarycolor, width: 1)),
                      // ),
                    ],
                  ),
                  Text(
                    'Manager',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Card(
            elevation: 2,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Admin User 23'),
                  Row(
                    children: [
                      Text("ID 1234435 "),
                      TextButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(Icons.add),
                            Icon(Icons.exposure_minus_1),
                          ],
                        ),
                      )
                    ],
                  ),
                  Text(
                    'manager',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Card(
            elevation: 2,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Admin User'),
                  Row(
                    children: [
                      Text("ID 1234 "),
                      TextButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(Icons.add),
                            Icon(Icons.exposure_minus_1),
                          ],
                        ),
                      )
                    ],
                  ),
                  Text(
                    'Cashier',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      drawer: DrawerManage(
        sync: true,
      ),
    );
  }
}
