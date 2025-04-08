import 'package:flutter/material.dart';
import 'package:foodchow/componets/drawer.dart';
import 'package:foodchow/constant/color.dart';
import 'package:foodchow/screens/tabbar/menu.dart';
import 'package:foodchow/screens/tabbar/order.dart';
import 'package:foodchow/screens/tabbar/table.dart';
import 'package:google_fonts/google_fonts.dart';

class Startorder extends StatefulWidget {
  const Startorder({super.key});

  @override
  State<Startorder> createState() => _StartorderState();
}

class _StartorderState extends State<Startorder>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);
    tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'orange',
          style: GoogleFonts.poppins(),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.person),
                    Text(
                      'Admin',
                      style: GoogleFonts.poppins(),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(48),
          child: Container(
            width: double.infinity,
            child: TabBar(
              isScrollable: false,
              // indicatorSize: TabBarIndicatorSize.values(),
              controller: tabController,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.grey,
              dividerColor: Colors.transparent,

              indicatorColor: Primarysecond,
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: BoxDecoration(
                  color: primarycolor, borderRadius: BorderRadius.circular(2)),

              tabs: const [
                Tab(
                  text: 'Menu',
                ),
                Tab(
                  text: 'Order',
                ),
                Tab(
                  text: 'Tables',
                )
              ],
            ),
          ),
        ),
      ),
      drawer: Drawerr(),
      body: TabBarView(
        controller: tabController,
        children: [const MenuScreen(), Order(), const TableScreen()],
      ),
    );
  }
}
