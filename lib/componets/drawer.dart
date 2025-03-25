import 'package:flutter/material.dart';
import 'package:foodchow/componets/listmenu.dart';
import 'package:foodchow/screens/welcomeAdmin.dart';
class Drawerr extends StatelessWidget {
  const Drawerr({super.key});

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
             SizedBox(height: 10,),
             GestureDetector(
               onTap: (){
                 Navigator.pop(context);

               },
               child: Listmenu(
                  title: 'Clear Cart', icons: Icons.cleaning_services_outlined,listcolor: Colors.grey.shade300,
                  heightCon: height * 0.06,borderwidth: 0,colorb: Colors.transparent,borderradius: 2,
               ),
             ),
             SizedBox(height: 10,),Listmenu(
                title: 'Printer Setting', icons: Icons.print,listcolor: Colors.grey.shade300,
                heightCon: height * 0.06,borderwidth: 0,colorb: Colors.transparent,borderradius: 2,
             ),
             SizedBox(height: 10,),Listmenu(
                title: 'Customization', icons: Icons.dashboard_customize,listcolor: Colors.grey.shade300,
                heightCon: height * 0.06,borderwidth: 0,colorb: Colors.transparent,borderradius: 2,
             ),
             SizedBox(height: 10,),Listmenu(
                title: 'Reports', icons: Icons.auto_graph,listcolor: Colors.grey.shade300,
                heightCon: height * 0.06,borderwidth: 0,colorb: Colors.transparent,borderradius: 2,
             ),
             SizedBox(height: 10,),SizedBox(height: 10,),Listmenu(
                title: 'Expenses', icons: Icons.wallet,listcolor: Colors.grey.shade300,
                heightCon: height * 0.06,borderwidth: 0,colorb: Colors.transparent,borderradius: 2,
             ),
             SizedBox(height: 10,),SizedBox(height: 10,),Listmenu(
                title: 'Sync Data', icons: Icons.sync,listcolor: Colors.grey.shade300,
                heightCon: height * 0.06,borderwidth: 0,colorb: Colors.transparent,borderradius: 2,
             ),
             SizedBox(height: 10,),SizedBox(height: 10,),Listmenu(
                title: 'Sync Order', icons: Icons.sync,listcolor: Colors.grey.shade300,
                heightCon: height * 0.06,borderwidth: 0,colorb: Colors.transparent,borderradius: 2,
             ),
             SizedBox(height: 10,),SizedBox(height: 10,),Listmenu(
                title: 'End Day', icons: Icons.sunny_snowing,listcolor: Colors.grey.shade300,
                heightCon: height * 0.06,borderwidth: 0,colorb: Colors.transparent,borderradius: 2,
             ),
             SizedBox(height: 10,),SizedBox(height: 10,),Listmenu(
                title: 'Need Help?', icons: Icons.person,listcolor: Colors.grey.shade300,
                heightCon: height * 0.06,borderwidth: 0,colorb: Colors.transparent,borderradius: 2,
             ),
             SizedBox(height: 10,),SizedBox(height: 10,),Listmenu(
                title: 'Language', icons: Icons.language,listcolor: Colors.grey.shade300,
                heightCon: height * 0.06,borderwidth: 0,colorb: Colors.transparent,borderradius: 2,
             ),
             SizedBox(height: 10,),
           ],
         ),
       ),
     ),
    );
  }
}
