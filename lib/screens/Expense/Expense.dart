import 'package:flutter/material.dart';
import 'package:foodchow/componets/drawermanage.dart';
import 'package:foodchow/componets/filterButton.dart';
import 'package:foodchow/constant/color.dart';
import 'package:foodchow/screens/Expense/addexpence.dart';
import 'package:foodchow/screens/Expense/viewexpense.dart';
import 'package:foodchow/screens/manage%20menu/managemenu.dart';
import 'package:google_fonts/google_fonts.dart';

class ExpenseScreen extends StatefulWidget {
  const ExpenseScreen({super.key});

  @override
  State<ExpenseScreen> createState() => _ExpenseScreenState();
}

class _ExpenseScreenState extends State<ExpenseScreen> {
  String selectedFilter = "Add Expence";

  Widget _getBody(){
    switch(selectedFilter){
      case "Add Expence":
        return Addexpence();
        case "View Expense":
          return ViewExpense();
          default:
            return  Addexpence();
    }
  }

  // Widget _getBody(){
  //   switch(selectedFilter){
  //     case "Day Wise":
  //       return DayWisebyDaily();
  //     case "MonthWise":
  //       return MonthWisebyDaily();
  //     case "Custome":
  //       return CustomeDaily();
  //     default:
  //       return Center(
  //         child: Text('NO Data AVAILABE'),
  //       );
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.person_2_outlined,size: 30,),
                Text('Admin',style: GoogleFonts.poppins(),)
              ],
            ),
          ),
        ],
      ),
      drawer: DrawerManage(issync: false, isDelete: false, islogout: false),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Text Expense
            Text('Expense',style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w600),),

            SizedBox(height: 25,),
            Row(
              children: [


                Filterbutton(
                    borderc: 0,
                    title: "Add Expense",
                    selectedFilter: selectedFilter,
                    onpressed: (){
                  setState(() {
                    selectedFilter = "Add Expense";
                  });
                    }),
                SizedBox(width:20),
                Filterbutton(
                    borderc: 0,
                    title: "View Expense",
                    selectedFilter: selectedFilter,
                    onpressed: (){
                  setState(() {
                    selectedFilter = "View Expense";
                  });
                    })
                         ],
            ),
            Expanded(child: _getBody())


          ],
        ),
      ),
    );
  }
}
