import 'package:flutter/material.dart';
import 'package:foodchow/componets/listmenu.dart';
import 'package:foodchow/screens/Expense/Expense.dart';
import 'package:foodchow/screens/Reports/reports.dart';
import 'package:foodchow/screens/welcomeAdmin.dart';

class DrawerManage extends StatelessWidget {

  final bool issync;
  final  bool isDelete;
  final  bool islogout;
  const DrawerManage({super.key, required this.issync,required this.isDelete, required this.islogout});


  @override
  Widget build(BuildContext context) {
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
              Listmenu(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ReportsScreen()));

                },
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

              sync == true? 
                 Column(
                    children: [
                      Listmenu(
                        title: 'Sync',
                        icons: Icons.sync,
                        listcolor: Colors.grey.shade300,
                        heightCon: height * 0.06,
                        borderwidth: 0,
                        colorb: Colors.transparent,
                        borderradius: 2,
                      ),
                      SizedBox(height: 10),
                    ],
                  )
                : SizedBox(), 

              Listmenu(
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
                title: 'Delete Account',
                colortext: Colors.red,
                icons: Icons.delete,
                color: Colors.red,
              ),


          issync?Listmenu(
            title: 'Sync?',
            icons: Icons.sync,
            listcolor: Colors.grey.shade300,
            heightCon: height * 0.06,
            borderwidth: 0,
            colorb: Colors.transparent,
            borderradius: 2,
          ):SizedBox(height:0),

              SizedBox(height: issync?10:0,),

              Listmenu(
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
                title: 'Logout',
                icons: Icons.logout,
                colortext: Colors.red,
              ),
              SizedBox(
                height: 10,
              ),
              isDelete?Listmenu(
                title: 'Delete Account',
                colortext: Colors.red,
                icons: Icons.delete,
                color: Colors.red,
                listcolor: Colors.grey.shade300,
                heightCon: height * 0.06,
                borderwidth: 0,
                colorb: Colors.transparent,
                borderradius: 2,
              ):SizedBox(height: 0,),
              SizedBox(
                height: 10,
              ),
              islogout?Listmenu(
                title: 'Logout',
                icons: Icons.logout,
                colortext: Colors.red,
                listcolor: Colors.grey.shade300,
                heightCon: height * 0.06,
                borderwidth: 0,
                colorb: Colors.transparent,
                borderradius: 2,
              ):SizedBox()
            ],
          )
        ),
      ),
    );
  }
}
