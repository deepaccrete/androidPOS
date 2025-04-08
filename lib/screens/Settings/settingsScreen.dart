import 'package:flutter/material.dart';
import 'package:foodchow/componets/drawermanage.dart';
import 'package:foodchow/componets/manuListViewWithNavigation.dart';
import 'package:foodchow/componets/manyListViewWithBottomSheet.dart';
import 'package:foodchow/screens/Settings/addressCustomizationScreen.dart';
import 'package:foodchow/screens/Settings/changePassword.dart';
import 'package:foodchow/screens/Settings/orderNotificationSetting.dart';
import 'package:foodchow/screens/Settings/orderSettings.dart';
import 'package:foodchow/screens/Settings/paymentsMethods.dart';

class Settingsscreen extends StatefulWidget {
  @override
  _settingsScreenState createState() => _settingsScreenState();
}

class _settingsScreenState extends State<Settingsscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 1,
          actions: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.person,
                  ),
                  Text("admin")
                ],
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  
                  Text(
                    "Settings",
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              MultipleListViewWithNavigation(
                displayTitle: "Address Customization",
                displayicon: Icons.arrow_forward_ios_outlined,
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>AddressCustomizationScreen()));
                },
              ),
              MultipleListViewWithNavigation(
                displayTitle: "Password Change",
                displayicon: Icons.arrow_forward_ios_outlined,
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Changepassword()));
                },
              ),
              MultipleListViewWithNavigation(
                displayTitle: "Order Settings",
                displayicon: Icons.arrow_forward_ios_outlined,
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Ordersettings()));
                },
              ),
              MultipleListViewWithNavigation(
                displayTitle: "Payment Methods",
                displayicon: Icons.arrow_forward_ios_outlined,
                onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Paymentsmethods()));
                },
              ),
              MultipleListViewWithNavigation(displayTitle: 'Online Order Notification Settings', displayicon: Icons.arrow_forward_ios_outlined, onTap: (){
                Navigator.push(context,MaterialPageRoute(builder:(context)=>OrderNotificationsettings()));
              }),
              Column(
                children: [
                  MultipleListViewWithNavigation(
                    displayTitle: "Decimal point",
                    displayicon: Icons.arrow_forward_ios_outlined,
                    onTap: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>Ordersettings()));
                    },
                    
                  ),
                  
                ],
              ),
            ],
          ),
        ),
        drawer: DrawerManage());
  }
}
