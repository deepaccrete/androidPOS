import 'package:flutter/material.dart';
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
          preferredSize: Size.fromHeight(48),
          child: TabBar(
            controller: tabController,
              isScrollable: false,
              tabs: const[
                Tab(text: 'Order(0)',),
                Tab(text: 'In Progress(0)',),
                Tab(text: 'Completed(0)',),
                Tab(text: 'Missed(0)',),
              ])
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
