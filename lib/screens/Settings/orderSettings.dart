import 'package:flutter/material.dart';
import 'package:foodchow/componets/filterButton.dart';
import 'package:foodchow/componets/inputTextFields.dart';
import 'package:foodchow/componets/toggleSwitch.dart';
import 'package:foodchow/constant/color.dart';

class Ordersettings extends StatefulWidget {
  @override
  _orderSettingsState createState() => _orderSettingsState();
}

class _orderSettingsState extends State<Ordersettings> {
  bool _isSelected = false;
  String selectedFilter = "Take Away";

  Widget _getBody() {
    switch (selectedFilter) {
      case "Take Away":
        return takeAway();
      case "dine in":
        return dineIn();
      case "Home Delivery":
        return homeDelivery();
      default:
        return takeAway();
    }
  }

  @override
  Widget build(BuildContext context) {
   final screenWidth = MediaQuery.of(context).size.width * 1;
    final screenheight = MediaQuery.of(context).size.height * 1;
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 120),
                  child: Text(
                    " Order Settings",
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Icon(Icons.person),
                Text("admin"),
              ],
            ),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Filterbutton(
                  title: 'Take Away',
                  selectedFilter: selectedFilter,
                  onpressed: () {
                    setState(() {
                      selectedFilter = "Take Away";
                    });
                  },
                ),
                Filterbutton(
                  title: 'dine in',
                  selectedFilter: selectedFilter,
                  onpressed: () {
                    setState(() {
                      selectedFilter = "dine in";
                    });
                  },
                ),
                Filterbutton(
                  title: 'Home Delivery',
                  selectedFilter: selectedFilter,
                  onpressed: () {
                    setState(() {
                      selectedFilter = "Home Delivery";
                    });
                  },
                ),
              ],
            ),
          ),
          Expanded(child: _getBody()),
        ],
      ),
    );
  }

  Widget takeAway() {
    return Column(
      children: [
              ToggleSwitch(widthc:0.7,initialValue: false, label:"Enable Take Away  ? "),
        ToggleSwitch(widthc:0.85 ,initialValue: false, label:"Enable place Order Diallog ? ")
      ],
    );
}

  Widget dineIn() {
    return  Column(
        children: [
        ToggleSwitch(widthc:0.5,initialValue: false, label:"dine in ? "),
        ToggleSwitch(widthc:0.85,initialValue: false, label:"Enable place Order Diallog ? ")
        ],
      );
    
  }

Widget homeDelivery() {
  return Column(
    children: [
    ToggleSwitch(
      widthc:0.85, initialValue: false, label:" Enabel Home Delivery  ? ")
    ],
  );
}
}