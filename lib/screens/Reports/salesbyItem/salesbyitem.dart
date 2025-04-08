// import 'package:flutter/material.dart';
// import 'package:foodchow/componets/Button.dart';
// import 'package:foodchow/constant/color.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class Salesbyitem extends StatefulWidget {
//   const Salesbyitem({super.key});
//
//   @override
//   State<Salesbyitem> createState() => _SalesbyitemState();
// }
//
// class _SalesbyitemState extends State<Salesbyitem> {
//
//   @override
//   Widget build(BuildContext context) {
//     final height = MediaQuery
//         .of(context)
//         .size
//         .height * 1;
//     final width = MediaQuery
//         .of(context)
//         .size
//         .width * 1;
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(onPressed: (){
//           Navigator.pop(context);
//         }, icon: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white,)),
//         backgroundColor: primarycolor,
//         centerTitle: true,
//         title: Text('Sales By Items',style:GoogleFonts.poppins(fontWeight: FontWeight.w500,color: Colors.white)),
//       ),
//
//       body:SingleChildScrollView(
//         child: Container(
//       padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
//           child: Column(
//             children: [
//               SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Row(
//                   children: [
//                     CommonButton(
//                       bordercircular: 5,
//                         width: width * 0.3,
//                         height:  height * 0.04,
//                         onTap: (){}, child: Center(child: Text('Today',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 16,color: Colors.white),))),
//                     SizedBox(width: 5,),
//                     CommonButton(
//                       bordercircular: 5,
//                         width: width * 0.3,
//                         height:  height * 0.04,
//                         onTap: (){}, child: Center(child: Text('Today',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 16,color: Colors.white),))),
//                     SizedBox(width: 5,),
//
//                     CommonButton(
//                       bordercircular: 5,
//                         width: width * 0.3,
//                         height:  height * 0.04,
//                         onTap: (){}, child: Center(child: Text('Today',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 16,color: Colors.white),))),
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:foodchow/screens/Reports/salesbyItem/daywiseitem.dart';
import 'package:foodchow/screens/Reports/salesbyItem/monthwiseitems.dart';
import 'package:foodchow/screens/Reports/salesbyItem/thisweek.dart';
import 'package:foodchow/screens/Reports/salesbyItem/today.dart';
import 'package:foodchow/screens/Reports/salesbyItem/yearwise.dart';
import 'package:google_fonts/google_fonts.dart';

class Salesbyitem extends StatefulWidget {
  @override
  _SalesbyitemState createState() => _SalesbyitemState();
}

class _SalesbyitemState extends State<Salesbyitem> {
  String selectedFilter = "Today";

  Widget _getBody() {
    switch (selectedFilter) {
      case "Today":
        return TodayByItem();
      case "Day Wise":
        return DayWiseItem();
      case "This Week":
        return ThisWeekItems();
      case "Month Wise Sales":
        return MonthWiseItem();
        case "Year Wise":
        return YearWiseItem();
      default:
        return Center(child: Text("No data available"));
    }
  }

  // TodayByItem();

  // Widget _dayWiseSales() {
  //   return Center(child: Text("Day Wise Sales Data"));
  // }



  // Widget _monthlySales() {
  //   return Center(child: Text("Monthly Sales Data"));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Sales By Items",style: GoogleFonts.poppins(color: Colors.white),),
        backgroundColor: Colors.teal,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,color: Colors.white,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        // padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: Column(
          children: [

            Container(
                alignment: Alignment.bottomLeft,
                child: Text('Sales By Items',style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w600),)),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _filterButton("Today"),
                  SizedBox(width: 10,),
                  _filterButton("Day Wise"),
                  SizedBox(width: 10,),

                  _filterButton("This Week"),
                  SizedBox(width: 10,),

                  _filterButton("Month Wise Sales"),
                  SizedBox(width: 10,),

                  _filterButton("Year Wise"),
                ],
              ),
            ),
            Expanded(
              child: _getBody(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _filterButton(String title) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          selectedFilter = title;
        });
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: selectedFilter == title ? Colors.teal : Colors.white,
        foregroundColor: selectedFilter == title ? Colors.white : Colors.teal,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(color: Colors.teal),
        ),
      ),
      child: Text(title),
    );
  }
}
