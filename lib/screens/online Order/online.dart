import 'package:flutter/material.dart';
import 'package:foodchow/constant/color.dart';
import 'package:foodchow/screens/online%20Order/Completed.dart';
import 'package:foodchow/screens/online%20Order/inProgress.dart';
import 'package:foodchow/screens/online%20Order/missed.dart';
import 'package:foodchow/screens/online%20Order/order.dart';
import 'package:google_fonts/google_fonts.dart';

class Online extends StatefulWidget {
  const Online({super.key});

  @override
  State<Online> createState() => _OnlineState();
}

class _OnlineState extends State<Online>
with SingleTickerProviderStateMixin{
  late TabController tabController;
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length:4 , vsync: this);
    tabController.addListener((){
      setState(() {

      });
    }) ;
}


  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('Orange'),
        actions: [
          Row(
            children: [
              Icon(Icons.person),
              Text('Admin',style: GoogleFonts.poppins(),)
            ],
          )
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Container(
          width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
            decoration:BoxDecoration(
              color: Colors.grey.shade200, // Background color
              borderRadius: BorderRadius.circular(8),
            ),
            child: TabBar(
                controller: tabController,
                isScrollable: true,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.grey,
                dividerColor: Colors.transparent,
                indicatorColor: Primarysecond,
                indicator: BoxDecoration(
                  color: primarycolor,
                    borderRadius:BorderRadius.circular(8),
                ),
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Tab(text: 'Order(0)',),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Tab(text: 'In Progress(0)',),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Tab(text: 'Completed(0)',),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),

                    child: Tab(text: 'Missed(0)',),
                  ),
                ]),
          )
        )
      ),
      body: TabBarView(
        controller: tabController,
          children: [
            Online_order(),
            Online_InProgress(),
            Online_Completed(),
            Online_Missed()

      ]),
    );
  }
}
