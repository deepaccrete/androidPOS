import 'package:flutter/material.dart';
import 'package:foodchow/componets/listmenu.dart';
import 'package:foodchow/screens/manage%20menu/reports.dart';
import 'package:foodchow/screens/welcomeAdmin.dart';
class DrawerManage extends StatelessWidget {
  const DrawerManage({super.key});

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
                  title: 'Home', icons: Icons.home,listcolor: Colors.grey.shade300,
                  heightCon: height * 0.06,borderwidth: 0,colorb: Colors.transparent,borderradius: 2,
                ),
              ),


              SizedBox(height: 10,),Listmenu(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> ReportsManage()));
                },
                title: 'Reports', icons: Icons.auto_graph,listcolor: Colors.grey.shade300,
                heightCon: height * 0.06,borderwidth: 0,colorb: Colors.transparent,borderradius: 2,
              ),
              SizedBox(height: 10,),SizedBox(height: 10,),Listmenu(

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
