import 'package:flutter/material.dart';
import 'package:foodchow/componets/listmenu.dart';
import 'package:foodchow/constant/color.dart';
import 'package:foodchow/screens/Inverntary/manage_Inventory.dart';
import 'package:foodchow/screens/ManageStaff/manageStaff.dart';
import 'package:foodchow/screens/Settings/settingsScreen.dart';
import 'package:foodchow/screens/TaxSetting/taxSettings.dart';
import 'package:foodchow/screens/auth/admin_login.dart';
import 'package:foodchow/screens/manage%20menu/managemenu.dart';
import 'package:foodchow/screens/splashScreen.dart';
import 'package:foodchow/screens/startorder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AdminWelcome extends StatelessWidget {
  const AdminWelcome({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      appBar: AppBar(
          // toolbarHeight: 50,
          // backgroundColor: Colors.red,
          actions: [
            Container(
              width: width,
              // color: Colors.green,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      alignment: Alignment.centerRight,
                      height: height * 0.5,
                      width: width * 0.3,
                      // color: Colors.purple,
                      child: Image.asset(
                        'assets/images/FOODCHOW3_processed.jpg',
                        fit: BoxFit.fill,
                      )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.person),
                        Text(
                          'Admin',
                          style: GoogleFonts.poppins(),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ]),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
          // color: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              // welcom
              Container(
                child: Text(
                  'Welcome Admin',
                  style: GoogleFonts.poppins(
                      fontSize: 22, fontWeight: FontWeight.w600),
                ),
              ),

              SizedBox(
                height: 30,
              ),
              Text(
                'Orange',
                style: GoogleFonts.poppins(fontSize: 18),
              ),
              SizedBox(
                height: 25,
              ),

              Row(
                children: [
                  Expanded(
                      child: Listmenu(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Startorder()));
                          },
                          title: 'Start',
                          icons: (Icons.shopping_cart_sharp))),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: Listmenu(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Managemenu()));
                          },
                          title: 'Manage Menu',
                          icons: (Icons.manage_accounts)))
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Expanded(
                      child: Listmenu(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => manageStaff()));
                          },
                          title: 'Manage Staff',
                          icons: (Icons.manage_accounts_sharp))),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: Listmenu(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ManageInventory()));
                          },
                          title: 'Invatory',
                          icons: (Icons.inventory)))
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Expanded(
                      child: Listmenu(
                          title: 'Reports',
                          icons: (Icons.auto_graph_outlined))),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: Listmenu(
                        onTap: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context) =>  taxSetting(),));
                        },
                          title: 'Tax Setting', icons: (Icons.settings)))
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Expanded(
                      child:
                          Listmenu(onTap: () {
                            Navigator.push(context,MaterialPageRoute(builder: (context)=> Settingsscreen()));
                          },
                            title: 'Setting', icons: (Icons.settings))),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: Listmenu(title: 'Expense', icons: (Icons.wallet)))
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Expanded(
                      child:
                          Listmenu(title: 'Language', icons: (Icons.language))),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: Listmenu(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AdminLogin()));
                    },
                    title: 'Logout',
                    icons: (Icons.logout),
                    color: Colors.red,
                  ))
                ],
              ),
              SizedBox(
                height: 5,
              ),
              // Listmenu(title: 'start', icon: Icon(Icons.shopping_cart_sharp), titleS: 'Manage Menu', iconS: Icon(Icons.manage_accounts),)
            ],
          ),
        ),
      ),
    );
  }
}
