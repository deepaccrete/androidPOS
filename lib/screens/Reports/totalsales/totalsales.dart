import 'package:flutter/material.dart';
import 'package:foodchow/componets/Button.dart';
import 'package:foodchow/constant/color.dart';
import 'package:foodchow/screens/Reports/comparisonbyproduct/monthwisebytop.dart';
import 'package:foodchow/screens/Reports/comparisonbyproduct/thisweekbycomparison.dart';
import 'package:foodchow/screens/Reports/comparisonbyproduct/todaybycomparison.dart';
import 'package:foodchow/screens/Reports/comparisonbyproduct/yearwisebyComparison.dart';
import 'package:foodchow/screens/Reports/refundDetails/customebyrefund.dart';
import 'package:foodchow/screens/Reports/refundDetails/monthbyrefund.dart';
import 'package:foodchow/screens/Reports/refundDetails/thisweekbyrefund.dart';
import 'package:foodchow/screens/Reports/refundDetails/todaybyrefund.dart';
import 'package:foodchow/screens/Reports/refundDetails/yearbyrefund.dart';
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
import 'package:foodchow/screens/Reports/totalsales/custome.dart';
import 'package:foodchow/screens/Reports/totalsales/monthwise.dart';
import 'package:foodchow/screens/Reports/totalsales/thisweek.dart';
import 'package:foodchow/screens/Reports/totalsales/todaytab.dart' show Todaytab;
import 'package:foodchow/screens/Reports/totalsales/yearwisetab.dart';
import 'package:foodchow/screens/Reports/void%20Order%20Report/customebyvoid.dart';
import 'package:foodchow/screens/Reports/void%20Order%20Report/monthbyvoid.dart';
import 'package:foodchow/screens/Reports/void%20Order%20Report/thisweekbyvoid.dart';
import 'package:foodchow/screens/Reports/void%20Order%20Report/todaybyvoid.dart';
import 'package:foodchow/screens/Reports/void%20Order%20Report/yearbyvoid.dart';
import 'package:google_fonts/google_fonts.dart';

class Totalsales extends StatefulWidget {
  const Totalsales({super.key});

  @override
  State<Totalsales> createState() => _TotalsalesState();
}

class _TotalsalesState extends State<Totalsales> {
  String selectedFilter = "Today";

  Widget _getBody(){
    switch(selectedFilter){
      case "Today":
        return Todaytab();
      case "Week Wise":
        return ThisWeekTab();
      case "Month Wise":
        return MonthWiseTab();
      case "Year Wise":
        return YearWiseTab();
      case "Custome":
        return CustomeTab();
      default:
        return Center(
          child: Text('NO DATA AVAILABE'),
        );
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primarycolor,
        title: Text("Total Sales",style: GoogleFonts.poppins(color: Colors.white)),
        centerTitle: true,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios,color: Colors.white,)),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [


            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _filterButton('Today'),

                  SizedBox(width: 10,),
                  _filterButton('Week Wise'),
                  SizedBox(width: 10,),
                  _filterButton('Month Wise'),
                  SizedBox(width: 10,),
                  _filterButton('Year Wise'),
                  SizedBox(width: 10,),
                  _filterButton('Custome'),
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



//
// Todaytab(),
// ThisTab(),
// MonthWiseTab(),
// YearWiseTab(),
// CustomeTab()