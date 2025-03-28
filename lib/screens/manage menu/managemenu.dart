import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:foodchow/componets/drawer.dart';
import 'package:foodchow/componets/drawermanage.dart';
import 'package:foodchow/constant/color.dart';
import 'package:foodchow/screens/manage%20menu/tab/Categoriestab.dart';
import 'package:foodchow/screens/manage%20menu/tab/Extratab.dart';
import 'package:foodchow/screens/manage%20menu/tab/all.dart';
import 'package:foodchow/screens/manage%20menu/tab/choicetab.dart';
import 'package:foodchow/screens/manage%20menu/tab/itemstab.dart';
import 'package:foodchow/screens/manage%20menu/tab/varianttab.dart';
import 'package:google_fonts/google_fonts.dart';

class Managemenu extends StatefulWidget {
  const Managemenu({super.key});

  @override
  State<Managemenu> createState() => _ManagemenuState();
}

class _ManagemenuState extends State<Managemenu>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 6, vsync: this);
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
        // automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.person),
                Text(
                  'Admin',
                  style: GoogleFonts.poppins(),
                )
              ],
            ),
          )
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: Container(
            width: double.infinity,
            child: TabBar(
              // dragStartBehavior: DragStartBehavior.start,
              labelPadding: EdgeInsets.symmetric(horizontal: 50),
              isScrollable: true,
              controller: tabController,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              dividerColor: Colors.transparent,
              indicatorColor: primarycolor,
              indicatorSize: TabBarIndicatorSize.tab,
              indicator:UnderlineTabIndicator(
                borderSide: BorderSide(width: 3.0,color: primarycolor),
                insets: EdgeInsets.symmetric(horizontal: 20)
              ),
              tabs: const [

                Tab(
                  text: 'All',
                ),
                Tab(
                  text: "items",
                ),
                Tab(
                  text: 'Categories',
                ),
                Tab(
                  text: 'Variant',
                ),
                Tab(
                  text: 'Choice',
                ),
                Tab(
                  text: 'Extra',
                ),
              ],
            ),
          ),
        ),
        // bottom: PreferredSize(
        //   preferredSize: Size.fromHeight(48),
        //   child: Container(
        //     width: double.infinity,
        //     child: TabBar(
        //       isScrollable: true,
        //       // indicatorSize: TabBarIndicatorSize.values(),
        //       controller: tabController,
        //       labelColor: Colors.white,
        //       unselectedLabelColor: Colors.grey,
        //       dividerColor: Colors.transparent,
        //
        //       indicatorColor: Primarysecond,
        //       indicatorSize: TabBarIndicatorSize.tab,
        //       indicator: BoxDecoration(
        //           color: primarycolor, borderRadius: BorderRadius.circular(2)),
        //
        //         tabs: const [
        //
        //               Tab(
        //                 text: 'All',
        //               ),
        //               Tab(
        //                 text: "items",
        //               ),
        //               Tab(
        //                 text: 'Categories',
        //               ),
        //               Tab(
        //                 text: 'Variant',
        //               ),
        //               Tab(
        //                 text: 'Choice',
        //               ),
        //               Tab(
        //                 text: 'Extra',
        //               ),
        //             ],
        //     ),
        //   ),
        // ),
      ),
      drawer: DrawerManage(),
      body: TabBarView(controller: tabController, children: [
        AllTab(),
        ItemsTab(),
        CategoryTab(),
          VariantTab(),
          ChoiceTab(),
          ExtraTab(),
      ]),
    );
  }
}
