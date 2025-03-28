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
      body: Row(
        mainAxisAlignment: MainAxisAlignment.end,

        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Stock History",),
              Padding(padding: EdgeInsets.all(10),child:
               ElevatedButton.icon(
                onPressed: (){
                Navigator.pop(context);
              }, 
              label: Text(
                            "Stock History",
                            style: TextStyle(color: Colors.white),
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
          Divider(
            thickness: 1,
            color: Colors.grey,
          ),
        ],
      ),
      drawer: DrawerManage(),
    );
  }
}
