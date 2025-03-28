import 'package:flutter/material.dart';
import 'package:foodchow/componets/listmenu.dart';
import 'package:foodchow/constant/color.dart';
import 'package:foodchow/screens/manage%20menu/reports.dart';
import 'package:foodchow/screens/welcomeAdmin.dart';

var themecolor = primarycolor;
//this is for resuable drower

class DrawerManage extends StatelessWidget {

  final String titleS;
  final IconData? icons;
  final Color? textcolor;
  final Color? iconColor;
  final VoidCallback? onTap;
  
  DrawerManage ({
    super.key,
   required this.titleS,
    this.icons,
   this.textcolor,
   this.iconColor,
   this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Drawer(
      // backgroundColor: ,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60,horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [

              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> AdminWelcome()));
                },
                child: Listmenu(
                  title: titleS, icons: Icons.home,listcolor: Colors.grey.shade300,
                  heightCon: height * 0.06,borderwidth: 0,colorb: Colors.transparent,borderradius: 2,
                ),
              ),
              SizedBox(height: 10,),
              Listmenu(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> ReportsManage()));
                },
                title: 'Reports', icons: Icons.auto_graph,listcolor: Colors.grey.shade300,
                heightCon: height * 0.06,borderwidth: 0,colorb: Colors.transparent,borderradius: 2,
              ),
             SizedBox(height: 10,),Listmenu(

                title: 'Need Help?', icons: Icons.person,listcolor: Colors.grey.shade300,
                heightCon: height * 0.06,borderwidth: 0,colorb: Colors.transparent,borderradius: 2,
              ),
              SizedBox(height: 10,),
              Listmenu(
                title: 'Delete Account',colortext: Colors.red, icons: Icons.delete,color: Colors.red,listcolor: Colors.grey.shade300,
                heightCon: height * 0.06,borderwidth: 0,colorb: Colors.transparent,borderradius: 2,
              ),
              SizedBox(height: 10,),
              Listmenu(
                title: 'Logout', icons: Icons.logout,colortext: Colors.red,listcolor: Colors.grey.shade300,
                heightCon: height * 0.06,borderwidth: 0,colorb: Colors.transparent,borderradius: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// return Drawer(
    //   child: Padding(
    //     padding: EdgeInsets.symmetric(horizontal: 60, vertical: 10),
    //     child: SingleChildScrollView(
    //       child: Column(
    //         children: [
    //           Column(
    //             children: [
    //               Padding(padding: EdgeInsets.only(bottom: 10),
    //               child: DrawerManage(
    //                     iconColor: themecolor,
    //                     icons: Icons.abc,
    //                     onTap: (){

    //                     },
    //                     textcolor: Colors.white,
    //                     title: "",
    //               ),
    //               ),
    //             ],
    //           )
    //           // DrawerManage()
              
              
    //         ],
    //       ),
    //     ),
    //   ),
    // );

