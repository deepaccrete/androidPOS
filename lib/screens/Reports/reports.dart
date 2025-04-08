import 'package:flutter/material.dart';
import 'package:foodchow/componets/custom_menu.dart';
import 'package:foodchow/componets/listmenu.dart';
import 'package:foodchow/constant/color.dart';
import 'package:foodchow/screens/Reports/Discount%20Order%20Report/dicountOrderReport.dart';
import 'package:foodchow/screens/Reports/comparison/comparisonbymonth.dart';
import 'package:foodchow/screens/Reports/comparison/comparisonbyweek.dart';
import 'package:foodchow/screens/Reports/comparison/comparisonbyyear.dart';
import 'package:foodchow/screens/Reports/comparisonbyproduct/comparisonproduct.dart';
import 'package:foodchow/screens/Reports/customer%20list%20by%20revenue/customerlistbyrevenue.dart';
import 'package:foodchow/screens/Reports/customerList/customerlist.dart';
import 'package:foodchow/screens/Reports/dailyClosingReports/dailyclosing.dart';
import 'package:foodchow/screens/Reports/pos%20End%20Day%20Report/posenddayreport.dart';
import 'package:foodchow/screens/Reports/refundDetails/refunddetails.dart';
import 'package:foodchow/screens/Reports/salesbyCategory/salesbycategory.dart';
import 'package:foodchow/screens/Reports/salesbyItem/salesbyitem.dart';
import 'package:foodchow/screens/Reports/salesbyTop/salesbytop.dart';
import 'package:foodchow/screens/Reports/salesbyposuser/salebyposuser.dart';
import 'package:foodchow/screens/Reports/salesbytradingsesison/salesbytrading.dart';
import 'package:foodchow/screens/Reports/totalsales/totalsales.dart';
import 'package:foodchow/screens/Reports/void%20Order%20Report/voidOrderReport.dart';
import 'package:google_fonts/google_fonts.dart';

class ReportsScreen extends StatefulWidget {
  const ReportsScreen({super.key});

  @override
  State<ReportsScreen> createState() => _ReportsScreenState();
}

class _ReportsScreenState extends State<ReportsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
          icon: Icon(Icons.arrow_back_ios_new),color: Colors.white,),
        centerTitle: true,
        title: Text('Operational Reports',style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.w500),),
        backgroundColor: primarycolor,

      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomMenu(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Totalsales() ));
                      },
                      icons: Icons.shopping_bag_outlined,
                      title: 'Total Sale'),
                  SizedBox(
                    width: 5,
                  ),
                  CustomMenu(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Salesbyitem()));
                      },
                      icons: Icons.fastfood,color: Colors.deepOrangeAccent,
                      title: 'Sales BY Items'),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomMenu(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> SalesbyCategory()));
                    },
                    icons: Icons.category,
                    color: Colors.deepOrangeAccent,
                    title: 'Sale By Category',
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  CustomMenu(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Salesbytrading()));

                      },
                      icons: Icons.trolley,
                      color: Colors.deepOrangeAccent,
                      title: 'Sales By Trading'),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomMenu(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> DailyClosingReport()));

                    },
                    icons: Icons.auto_graph,
                    color: Colors.deepOrangeAccent,
                    title: 'Daily Closing Reports',
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  CustomMenu(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> SalesbyTop()));

                      },
                      icons: Icons.graphic_eq_outlined,
                      color: Colors.deepOrangeAccent,
                      title: 'Sales By Top Selling'),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomMenu(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> CustomerListReport()));

                    },
                    icons: Icons.list_alt,
                    color: primarycolor,
                    title: 'Customer List',
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  CustomMenu(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> CustomerListByRevenue()));
                      },
                      icons: Icons.monetization_on_outlined,
                      color: Colors.deepOrangeAccent,
                      title: 'Customer List BY \n      Revenue'),
                ],
              ),

              SizedBox(
                height: 15,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomMenu(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> ComparisonByWeek()));

                    },
                    icons: Icons.view_week,
                    color: primarycolor,
                    title: 'Coparision BY Week',
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  CustomMenu(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> ComparisonByMonth()));

                    },
                    icons: Icons.view_week,
                    color: primarycolor,
                    title: 'Coparision BY Month',
                  ),
                ],
              ),SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomMenu(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> ComparisonByYear()));

                    },
                    icons: Icons.view_week,
                    color: primarycolor,
                    title: 'Coparision BY Year',
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  CustomMenu(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> ComparisonByProduct()));

                    },
                    icons: Icons.view_week,
                    color: primarycolor,
                    title: 'Coparision BY Product',
                  ),
                ],
              ),

              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomMenu(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> RefundDetails()));

                    },
                    icons: Icons.backspace_outlined,
                    color: primarycolor,
                    title: 'Refund Details',
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  CustomMenu(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> VoidOrderReport()));

                    },
                    icons: Icons.list_alt,
                    color: primarycolor,
                    title: 'Void Order Report',
                  ),
                ],
              ), SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomMenu(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> DiscountOrderReport()));

                    },
                    icons: Icons.note_alt_outlined,
                    color: Colors.deepOrangeAccent,
                    title: '    Discount Order     \n        Reports',
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  CustomMenu(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Posenddayreport()));

                    },
                    icons: Icons.list_alt,
                    color: primarycolor,
                    title: 'Pos End Day',
                  ),

                 ],
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomMenu(onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SalesByPOsUSer()));

                  },
                      icons: Icons.shopping_cart_sharp, title: 'Sales By Pos User'),
                ],
              )









            ],
          ),
        ),
      ),
    );
  }
}
