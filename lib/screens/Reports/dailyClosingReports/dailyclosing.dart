import 'package:flutter/material.dart';
import 'package:foodchow/componets/Button.dart';
import 'package:foodchow/constant/color.dart';
import 'package:foodchow/screens/Reports/dailyClosingReports/customedaily.dart';
import 'package:foodchow/screens/Reports/dailyClosingReports/daywisedaily.dart';
import 'package:foodchow/screens/Reports/dailyClosingReports/monthwisedaily.dart';
import 'package:foodchow/screens/Reports/salesbyCategory/yearwise.dart';
import 'package:foodchow/screens/Reports/salesbytradingsesison/daywisebytrading.dart';
import 'package:foodchow/screens/Reports/salesbytradingsesison/monthwisebytrading.dart';
import 'package:foodchow/screens/Reports/salesbytradingsesison/thisweekbytrading.dart';
import 'package:foodchow/screens/Reports/salesbytradingsesison/todaybytrading.dart';
import 'package:foodchow/screens/Reports/salesbytradingsesison/yearwisebytrading.dart';
import 'package:google_fonts/google_fonts.dart';

class DailyClosingReport extends StatefulWidget {
  const DailyClosingReport({super.key});

  @override
  State<DailyClosingReport> createState() => _DailyClosingReportState();
}

class _DailyClosingReportState extends State<DailyClosingReport> {
  String selectedFilter = "Day Wise";

  Widget _getBody(){
    switch(selectedFilter){
      case "Day Wise":
        return DayWisebyDaily();
      case "MonthWise":
        return MonthWisebyDaily();
      case "Custome":
        return CustomeDaily();
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
        title: Text("Daily Closing Report",style: GoogleFonts.poppins(color: Colors.white)),
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
              child: Text('Daily Closing Report',style: GoogleFonts.poppins(
                fontSize: 18,fontWeight: FontWeight.w600,
              ),),
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [

                  _filterButton('Day Wise'),
                  SizedBox(width: 10,),
                  _filterButton('MonthWise'),
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
