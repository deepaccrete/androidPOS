import 'package:flutter/material.dart';
import 'package:foodchow/componets/Button.dart';
import 'package:foodchow/componets/dropdown.dart';
import 'package:foodchow/componets/showdialog.dart';
import 'package:foodchow/componets/toggleSwitch.dart';

class Paymentsmethods extends StatefulWidget {
  @override
  _paymentsmethodsState createState() => _paymentsmethodsState();
}

class _paymentsmethodsState extends State<Paymentsmethods> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 1,
          actions: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 120),
                  child: Text(
                    "Payments Methos",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Icon(Icons.person),
                Text('Admin'),
              ],
            )
          ],
        ),
        body: Column(children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CommonButton(
                    onTap: () {},
                    bordercircular: 10,
                    height: 50,
                    width: 120,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.sync,
                          color: Colors.white,
                        ),
                        Text(
                          "Sync",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ],
                    )),
                SizedBox(
                  width: 10,
                ),
                CommonButton(
                    onTap: () {},
                    bordercircular: 10,
                    height: 50,
                    width: 120,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add_circle,
                          color: Colors.white,
                        ),
                        TextButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return Showdialog(content: 'Add the payment details here',title: 'Add  Payment Method',ButtonText: 'Add',);
                                });
                          },
                          child: Text(
                            "Add",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ),
                      ],
                    ))
              ],
            ),
          ),
          FittedBox(
              child: DataTable(columns: [
            DataColumn(label: Text("Sr No")),
            DataColumn(label: Text("Method\nName")),
            DataColumn(label: Text("Active\nDeactive")),
            DataColumn(label: Text("Edit")),
          ], rows: [
            DataRow(cells: [
              DataCell(Text("1")),
              DataCell(Text("Cash")),
              DataCell(ToggleSwitch(
                initialValue: false,
                showBorder: false,
              )),
              DataCell(IconButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return Showdialog(content: 'update the payment details here',title: 'update Payment Method',ButtonText: 'Update',);
                        });
                  },
                  icon: Icon(Icons.edit)))
            ]),
            DataRow(cells: [
              DataCell(Text("2")),
              DataCell(Text("Card")),
              DataCell(ToggleSwitch(
                initialValue: false,
                showBorder: false,
              )),
              DataCell(IconButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return Showdialog(content: 'update the payment details here',title: 'update Payment Method',ButtonText: 'Update',);
                        });
                  },
                  icon: Icon(Icons.edit)))
            ])
          ]))
        ]));
  }
}
