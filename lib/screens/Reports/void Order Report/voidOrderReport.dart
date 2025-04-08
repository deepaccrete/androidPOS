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
import 'package:foodchow/screens/Reports/void%20Order%20Report/customebyvoid.dart';
import 'package:foodchow/screens/Reports/void%20Order%20Report/monthbyvoid.dart';
import 'package:foodchow/screens/Reports/void%20Order%20Report/thisweekbyvoid.dart';
import 'package:foodchow/screens/Reports/void%20Order%20Report/todaybyvoid.dart';
import 'package:foodchow/screens/Reports/void%20Order%20Report/yearbyvoid.dart';
import 'package:google_fonts/google_fonts.dart';

class VoidOrderReport extends StatefulWidget {
  const VoidOrderReport({super.key});

  @override
  State<VoidOrderReport> createState() => _VoidOrderReportState();
}

class _VoidOrderReportState extends State<VoidOrderReport> {
  String selectedFilter = "Today";

  Widget _getBody(){
    switch(selectedFilter){
      case "Today":
        return TodayByVoid();
        case "Week Wise":
        return WeekByVoid();
      case "Month Wise":
        return MonthbyVoid();
      case "Year Wise":
        return YearWisebyVoid();
      case "Custome":
        return CustomByVoid();
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
        title: Text("Void Order Report",style: GoogleFonts.poppins(color: Colors.white)),
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
            
            Text('Refund Details',style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 18),),
            SizedBox(height: 10,),

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
