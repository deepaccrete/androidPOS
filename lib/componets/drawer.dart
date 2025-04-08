import 'dart:async';

import 'package:flutter/material.dart';
import 'package:foodchow/componets/Button.dart';
import 'package:foodchow/componets/listmenu.dart';
import 'package:foodchow/constant/color.dart';
import 'package:foodchow/screens/end%20day/endday.dart';
import 'package:foodchow/screens/need%20help/needhelp.dart';
import 'package:foodchow/screens/printerSetting/customization.dart';
import 'package:foodchow/screens/printerSetting/printersetting.dart';
import 'package:foodchow/screens/welcomeAdmin.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class Drawerr extends StatefulWidget {
  const Drawerr({super.key});

  @override
  State<Drawerr> createState() => _DrawerrState();
}

class _DrawerrState extends State<Drawerr> {
  @override
  Widget build(BuildContext context) {
    bool _printerExpanded = false;
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;

    return Drawer(
      // backgroundColor: ,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AdminWelcome()));
                },
                // Home
                child: Listmenu(
                  title: 'Home',
                  icons: Icons.home,
                  listcolor: Colors.grey.shade300,
                  heightCon: height * 0.06,
                  borderwidth: 0,
                  colorb: Colors.transparent,
                  borderradius: 2,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              //clear caart
              Listmenu(
                onTap: (){
                  Navigator.pop(context);
                  showDialog(context: context,
                      builder: (BuildContext context){
                    return AlertDialog(

                      title: Text('Are you sure you want to \n clear cart?',style: GoogleFonts.poppins(fontSize: 14),textAlign: TextAlign.center,),
                      // content: Text('AleartDialog Description'),
                      actions: [
                        CommonButton(
                          borderwidth: 0,
                          bordercolor: Colors.red,
                          bgcolor: Colors.red,
                          bordercircular: 0,
                          width: width * 0.3,
                            height: height * 0.03,
                            onTap: (){
                            Navigator.pop(context);
                            }, child: Text('No',style: GoogleFonts.poppins(color: Colors.white),)),
                        CommonButton(
                          bordercircular: 0,
                          width: width * 0.3,
                            height: height * 0.03,
                            onTap: (){
                              Navigator.pop(context);

                            }, child: Text('Yes',style: GoogleFonts.poppins(color: Colors.white),))
                      ],
                    );
                      },);
                },
                title: 'Clear Cart',
                icons: Icons.cleaning_services_outlined,
                listcolor: Colors.grey.shade300,
                heightCon: height * 0.06,
                borderwidth: 0,
                colorb: Colors.transparent,
                borderradius: 2,
              ),
              SizedBox(
                height: 10,
              ),


              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade300
                ),
                child: Theme(
                  data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    initiallyExpanded: _printerExpanded,
                    onExpansionChanged: (expanded) {
                      setState(() {
                        _printerExpanded = expanded;
                      });
                    },
                    leading: Icon(Icons.print, color: Colors.teal),
                    title: Text(
                      "Printer Setting",
                      style: GoogleFonts.poppins(fontSize: 16),
                    ),
                    backgroundColor: Colors.grey.shade300,
                    childrenPadding: EdgeInsets.only(left: 16),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Listmenu(
                          title: 'Add Printer',
                          icons: Icons.add,
                          listcolor: Colors.grey.shade200,
                          heightCon: 50,
                          borderwidth: 0,
                          colorb: primarycolor,
                          borderradius: 5,
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> Printersetting()));
                            // Handle tap
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                                         border: Border.all(color: primarycolor)
                          ),
                          // width: width * 0.7,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Listmenu(
                                  title: 'Cash Drawer Setting',
                                  icons: Icons.settings,
                                  listcolor: Colors.grey.shade300,
                                  heightCon: 45,
                                  borderwidth: 0,
                                  colorb: Colors.transparent,
                                  borderradius: 0,
                                  onTap: () {
                                    // Handle tap
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                     width: 20,
                                  child: Checkbox(
                                    value: true,
                                    onChanged: (value) {
                                      // Handle toggle
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Listmenu(
                          title: 'Customize Your Printer',
                          icons: Icons.tune,
                          listcolor: Colors.grey.shade200,
                          heightCon: 50,
                          borderwidth: 0,
                          colorb: primarycolor,
                          borderradius: 5,
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> CustomizationPrinter()));
                            // Handle tap
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),


              // ExpansionTile(
              //   initiallyExpanded: _printerExpanded,
              //   onExpansionChanged: (expanded){
              //     setState(() {
              //       _printerExpanded = expanded;
              //     });
              //   },
              //   title: Text('Printer setting'),
              //   leading: Icon(Icons.print),
              //   child: Listmenu(
              //     title: 'Printer Setting',
              //     icons: Icons.print,
              //     listcolor: Colors.grey.shade300,
              //     heightCon: height * 0.06,
              //     borderwidth: 0,
              //     colorb: Colors.transparent,
              //     borderradius: 2,
              //   ),
              // ),
              SizedBox(
                height: 10,
              ),
              Listmenu(
                title: 'Customization',
                icons: Icons.dashboard_customize,
                listcolor: Colors.grey.shade300,
                heightCon: height * 0.06,
                borderwidth: 0,
                colorb: Colors.transparent,
                borderradius: 2,
              ),
              SizedBox(
                height: 10,
              ),
              Listmenu(
                title: 'Reports',
                icons: Icons.auto_graph,
                listcolor: Colors.grey.shade300,
                heightCon: height * 0.06,
                borderwidth: 0,
                colorb: Colors.transparent,
                borderradius: 2,
              ),
              SizedBox(
                height: 10,
              ),
              Listmenu(
                title: 'Expenses',
                icons: Icons.wallet,
                listcolor: Colors.grey.shade300,
                heightCon: height * 0.06,
                borderwidth: 0,
                colorb: Colors.transparent,
                borderradius: 2,
              ),
              SizedBox(
                height: 10,
              ),

        Listmenu(
          onTap: () {
            // Close the drawer/page first
            Navigator.pop(context);

            // Then show dialog after popping
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (BuildContext dialogContext) {
                // Start 5-second timer to close the dialog
                Timer(
                  Duration(seconds: 5),
                      () {
                    Navigator.of(dialogContext, rootNavigator: true).pop(); // closes the dialog
                  },
                );

                return AlertDialog(
                  actions: [
                    Container(
                      padding: EdgeInsets.all(10),
                      width: width,
                      height: height * 0.35,
                      child: Column(
                        children: [
                          Lottie.network(
                            'https://lottie.host/752c379a-2b22-4350-b61c-22a540d8d455/wFF4VD549I.json',
                            width: 200,
                            height: 200,
                          ),
                          SizedBox(height: 25),
                          Text(
                            'Sync in Progress...',
                            style: GoogleFonts.poppins(color: primarycolor),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Please wait while we update your data...',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(),
                          )
                        ],
                      ),
                    ),
                  ],
                );
              },
            );
          },
          title: 'Sync Data',
          icons: Icons.sync,
          listcolor: Colors.grey.shade300,
          heightCon: height * 0.06,
          borderwidth: 0,
          colorb: Colors.transparent,
          borderradius: 2,
        ),
              SizedBox(
                height: 10,
              ),
              Listmenu(

                title: 'Sync Order',
                icons: Icons.sync,
                listcolor: Colors.grey.shade300,
                heightCon: height * 0.06,
                borderwidth: 0,
                colorb: Colors.transparent,
                borderradius: 2,
              ),
              SizedBox(
                height: 10,
              ),
              Listmenu(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> EndDayDrawer()));
                },
                title: 'End Day',
                icons: Icons.sunny_snowing,
                listcolor: Colors.grey.shade300,
                heightCon: height * 0.06,
                borderwidth: 0,
                colorb: Colors.transparent,
                borderradius: 2,
              ),
              SizedBox(
                height: 10,
              ),
              Listmenu(
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> NeedhelpDrawer()));
                },
                title: 'Need Help?',
                icons: Icons.person,
                listcolor: Colors.grey.shade300,
                heightCon: height * 0.06,
                borderwidth: 0,
                colorb: Colors.transparent,
                borderradius: 2,
              ),
              SizedBox(
                height: 10,
              ),
              Listmenu(
                title: 'Language',
                icons: Icons.language,
                listcolor: Colors.grey.shade300,
                heightCon: height * 0.06,
                borderwidth: 0,
                colorb: Colors.transparent,
                borderradius: 2,
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


