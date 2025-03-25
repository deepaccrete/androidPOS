import 'package:flutter/material.dart';
import 'package:foodchow/componets/custom_menu.dart';
import 'package:foodchow/componets/listmenu.dart';
import 'package:foodchow/constant/color.dart';

class ReportsManage extends StatefulWidget {
  const ReportsManage({super.key});

  @override
  State<ReportsManage> createState() => _ReportsManageState();
}

class _ReportsManageState extends State<ReportsManage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Operational Reports'),
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
                      onTap: () {},
                      icons: Icons.shopping_bag_outlined,
                      title: 'Total Sale'),
                  SizedBox(
                    width: 5,
                  ),
                  CustomMenu(
                      onTap: () {},
                      icons: Icons.shopping_bag_outlined,
                      title: 'Total Sale'),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomMenu(
                    onTap: () {},
                    icons: Icons.category,
                    color: Colors.deepOrangeAccent,
                    title: 'Sale By Category',
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  CustomMenu(
                      onTap: () {},
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
                    onTap: () {},
                    icons: Icons.auto_graph,
                    color: Colors.deepOrangeAccent,
                    title: 'Daily Closing Reports',
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  CustomMenu(
                      onTap: () {},
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
                    onTap: () {},
                    icons: Icons.list_alt,
                    color: primarycolor,
                    title: 'Customer List',
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  CustomMenu(
                      onTap: () {},
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
                    onTap: () {},
                    icons: Icons.view_week,
                    color: primarycolor,
                    title: 'Coparision BY Year',
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  CustomMenu(
                    onTap: () {},
                    icons: Icons.view_week,
                    color: primarycolor,
                    title: 'Coparision BY Product',
                  ),
                ],
              ),SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomMenu(
                    onTap: () {},
                    icons: Icons.view_week,
                    color: primarycolor,
                    title: 'Coparision BY Week',
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  CustomMenu(
                    onTap: () {},
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
                    onTap: () {},
                    icons: Icons.backspace_outlined,
                    color: primarycolor,
                    title: 'Refund Details',
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  CustomMenu(
                    onTap: () {},
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
                    onTap: () {},
                    icons: Icons.note_alt_outlined,
                    color: Colors.deepOrangeAccent,
                    title: '    Discount Order     \n        Reports',
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  CustomMenu(
                    onTap: () {},
                    icons: Icons.list_alt,
                    color: primarycolor,
                    title: 'Pos End Day',
                  ),

                 ],
              ),
              CustomMenu(onTap: (){},
                  icons: Icons.shopping_cart_sharp, title: 'Sales By Pos User')









            ],
          ),
        ),
      ),
    );
  }
}
