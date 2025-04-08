import 'package:flutter/material.dart';
import 'package:foodchow/constant/color.dart';
import 'package:foodchow/screens/start%20order/cart/delivery.dart';
import 'package:foodchow/screens/start%20order/cart/takeaway.dart';

import '../../tabbar/table.dart';
class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> with SingleTickerProviderStateMixin {
  late TabController tabControllerr ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabControllerr = TabController(length: 3, vsync: this);
    tabControllerr.addListener((){
      setState(() {});
    });
  }
  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        // leading: BackButton(style: ButtonStyle(),),
        actions: [
          // Clear Cart Icon
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width:width *0.3,
              height: height *0.03 ,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade800,)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.cleaning_services_rounded,size: 20,),
                  Text('Clear Cart')
                ],
              ),
            ),
          ),
        ],
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(48),
            child: Container(
              width: double.infinity,
              child: TabBar(
                dividerHeight: 100,
                padding: EdgeInsets.symmetric(horizontal: 20),
                isScrollable: false,
                controller: tabControllerr,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.grey,
                dividerColor: Colors.transparent,
                 indicatorColor:  primarycolor,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                  color: primarycolor,
                ),
                tabs: [
                  Tab(
                    child: Container(
                      // decoration: BoxDecoration(
                      //
                      //     color: Colors.red,
                      //   borderRadius: BorderRadius.circular(20)
                      // ),
                      child: Row(
                        children: [
                          Icon(Icons.dinner_dining),
                        Text('Take Away',style: TextStyle(fontSize: 12),),
                        ],
                      ),
                    ),
                  ),
                  Tab(
                    text: 'Dine in',
                  ),
                  Tab(
                    text: 'Delivery',
                  )
                ],
              ),
            )),
      ),
      body: TabBarView(
        controller: tabControllerr,
          children:[
            Takeaway(),
            TableScreen(),
            Delivery()
          ] ),
    );
  }
}

