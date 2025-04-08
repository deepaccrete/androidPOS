import 'package:flutter/material.dart';
import 'package:foodchow/componets/Button.dart';
import 'package:foodchow/constant/color.dart';
import 'package:foodchow/screens/Reports/comparisonbyproduct/monthwisebytop.dart';
import 'package:foodchow/screens/Reports/comparisonbyproduct/thisweekbycomparison.dart';
import 'package:foodchow/screens/Reports/comparisonbyproduct/todaybycomparison.dart';
import 'package:foodchow/screens/Reports/comparisonbyproduct/yearwisebyComparison.dart';
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

class ComparisonByProduct extends StatefulWidget {
  const ComparisonByProduct({super.key});

  @override
  State<ComparisonByProduct> createState() => _ComparisonByProductState();
}

class _ComparisonByProductState extends State<ComparisonByProduct> {
  String selectedFilter = "Today";

  Widget _getBody(){
    switch(selectedFilter){
      case "Today":
        return TodayByComparison();
      case "This Week":
        return ThisWeekbyComparison();
      case "Month Wise":
        return MonthWisebyComparison();
      case "Year Wise":
        return YearWisebyComparison();
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
        title: Text("Comparison By Product",style: GoogleFonts.poppins(color: Colors.white)),
         centerTitle: true,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios,color: Colors.white,)),
      ),
    body: Container(
      padding: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
      child: Column(
        children: [

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _filterButton('Today'),
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
