import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:foodchow/componets/drawermanage.dart';
import 'package:foodchow/componets/listmenu.dart';
import 'package:foodchow/constant/color.dart';
import 'package:foodchow/screens/Inverntary/manage_Inventory.dart';
import 'package:foodchow/screens/ManageStaff/manageStaff.dart';
import 'package:foodchow/screens/auth/admin_login.dart';
import 'package:foodchow/screens/manage%20menu/managemenu.dart';
import 'package:foodchow/screens/splashScreen.dart';
import 'package:foodchow/screens/startorder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StockHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        shadowColor: Colors.black,
        actions: [
          Padding(padding: 
          EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(Icons.person),
              Text(
                "Admin",),
            ],
          ),)
        ],
        
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                 flex: 2,
                  child: Text(
                    "Stock History",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    label: Text(  
                      "Stock History",
                      style: TextStyle(color: Colors.white,fontSize: 10),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      backgroundColor: primarycolor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 20,
                ),
                child: Text(
                  "Stocks ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              )
            ],
          ),
        ],
      ),drawer: DrawerManage(),
    );
  }
}
