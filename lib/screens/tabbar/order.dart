import 'package:flutter/material.dart';
import 'package:foodchow/constant/color.dart';
import 'package:foodchow/screens/tabbar/activeorder.dart';
import 'package:foodchow/screens/tabbar/pastorder.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 2, vsync: this);
    tabController.addListener(() {
      setState(() {});
    });
  }
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      body:Container(
        padding: EdgeInsets.all(12),
        // color: Colors.red,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: width * 0.7,
                  // color: Colors.red,
                  child: TabBar(
                      isScrollable: false,
                      controller: tabController,
                      unselectedLabelColor: Colors.grey,
                      dividerColor: Colors.transparent,
                      indicatorColor: primarycolor,
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicator: BoxDecoration(
                          color: primarycolor,
                          borderRadius: BorderRadius.circular(1)
                      ),
                      tabs: const [
                        Tab(text: 'Active Order',),
                        Tab(text: 'Past Order',),
                      ]
                  ),
                ),
                Container(
                  height: height * 0.04,
                  width: width * 0.15,
                    decoration: BoxDecoration(
                    color: primarycolor,
                      borderRadius: BorderRadius.circular(5)
        
                  ),
                  child:Icon(Icons.refresh,color:Colors.white,)
                )
              ],
            ),
        
            // Wrap this in Expanded
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: [
                  Activeorder(),
                  Pastorder()
                ],
              ),
            ),
          ],
        ),
      ),


      // Column(
      //   children: [
      //     Container(
      //       width: width * 0.7 ,
      //       color: Colors.red,
      //       child: TabBar(
      //           isScrollable: false,
      //           controller:  tabController,
      //           unselectedLabelColor: Colors.grey,
      //           dividerColor: Colors.transparent,
      //
      //           indicatorColor: primarycolor,
      //           indicatorSize: TabBarIndicatorSize.tab,
      //           indicator: BoxDecoration(
      //             color: primarycolor, borderRadius: BorderRadius.circular(1)
      //           ),
      //           tabs: const[
      //             Tab(text: 'Active Order',),
      //
      //             Tab(text: 'Past Order',),
      //           ]),
      //     ),
      //
      //     TabBarView(
      //         controller: tabController,
      //         children: [
      //           Activeorder(),
      //           Pastorder()
      //         ])
      //
      //
      //   ],
      // ),
    );
  }
}
