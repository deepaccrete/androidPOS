import 'package:flutter/material.dart';
import 'package:foodchow/componets/Button.dart';
import 'package:foodchow/constant/color.dart';
import 'package:foodchow/screens/Reports/salesbyCategory/yearwise.dart';
import 'package:foodchow/screens/Reports/salesbyTop/daywisebytop.dart';
import 'package:foodchow/screens/Reports/salesbyTop/monthwisebytop.dart';
import 'package:foodchow/screens/Reports/salesbyTop/thisweekbytop.dart';
import 'package:foodchow/screens/Reports/salesbyTop/todaybytop.dart';
import 'package:foodchow/screens/Reports/salesbyTop/yearwisebytop.dart';
import 'package:foodchow/screens/Reports/salesbytradingsesison/daywisebytrading.dart';
import 'package:foodchow/screens/Reports/salesbytradingsesison/monthwisebytrading.dart';
import 'package:foodchow/screens/Reports/salesbytradingsesison/thisweekbytrading.dart';
import 'package:foodchow/screens/Reports/salesbytradingsesison/todaybytrading.dart';
import 'package:google_fonts/google_fonts.dart';

class SalesbyTop extends StatefulWidget {
  const SalesbyTop({super.key});

  @override
  State<SalesbyTop> createState() => _SalesbyTopState();
}

class _SalesbyTopState extends State<SalesbyTop> {
  String selectedFilter = "Today";

  Widget _getBody(){
    switch(selectedFilter){
      case "Today":
        return TodaybyTop();
      case "Day Wise":
        return DayWisebyTop();
      case "This Week":
        return ThisWeekbyTop();
      case "Month Wise":
        return MonthWisebyTop();
      case "Year Wise":
        return YearWisebyTop();
      default:
        return Center(
          child: Text('NO Data AVAILABE'),
        );
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primarycolor,
        title: Text("Sales by Top Selling",style: GoogleFonts.poppins(color: Colors.white)),
         centerTitle: true,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios,color: Colors.white,)),
      ),
    body: Container(
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      child: Column(
        children: [
          Container(
            alignment: Alignment.bottomLeft,
            child: Text('Sales by Top Selling',style: GoogleFonts.poppins(
              fontSize: 18,fontWeight: FontWeight.w600,
            ),),
          ),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _filterButton('Today'),
                SizedBox(width: 10,),
                _filterButton('Day Wise'),
                SizedBox(width: 10,),
                _filterButton('This Week'),
                SizedBox(width: 10,),
                _filterButton('Month Wise'),
                SizedBox(width: 10,),
                _filterButton('Year Wise'),
              ],
            ),
          ),
          Expanded(child: _getBody())


        ],
      ),
    ),
    );

  }

  Widget _filterButton(String title){
    return ElevatedButton(
        onPressed: (){
          setState(() {
            selectedFilter = title;
          });

        },

        style: ElevatedButton.styleFrom(
          backgroundColor: selectedFilter==title ? Colors.teal : Colors.white,
          foregroundColor: selectedFilter==title ? Colors.white : Colors.teal,
       shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(8),
         side: BorderSide(color: Colors.teal)
       )
        ),
        child: Text(title));
  }

  // CommonButton;

}
