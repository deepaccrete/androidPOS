import 'package:flutter/material.dart';
import 'package:foodchow/componets/Button.dart';
import 'package:foodchow/componets/dropdown.dart';
import 'package:foodchow/componets/listmenu.dart';
import 'package:foodchow/componets/mulTextFelids&userinfoPopUp.dart';

import 'package:foodchow/constant/color.dart';

class Addtax extends StatefulWidget {
  @override
  State<Addtax> createState() => _AddtaxState();
}

class _AddtaxState extends State<Addtax> {
  String _selectedItem = '1';
  bool _ischecked1 = false;
  bool _ischecked2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 1,
          actions: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [Icon(Icons.person), Text('Admin')],
              ),
            )
          ],
        ),
        body: Column(
          children: [
            SizedBox(height: 10.0),
            Container(
              child: Column(
                children: [
                  Text(
                    "Add Tax to your items",
                    style: TextStyle(color: Colors.orange, fontSize: 16.0),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "You have not configured",
                    style:
                        TextStyle(color: Colors.blueGrey[200], fontSize: 20.0),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),           
              child: Center(
                child: Image.asset(
                  'assets/images/taximage.png',
                  width: 300,
                  height: 500 ,
                ),
              ),
            ),
            SizedBox(height: 10),
            TextButton(
              style: TextButton.styleFrom(
                minimumSize: Size(200, 50),
                backgroundColor: primarycolor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return StatefulBuilder(
                      builder: (context, setModalState) {
                        // ✅ Allows state update inside modal
                        return Padding(
                          padding: EdgeInsets.all(16.0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Add Multiple Tax',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold)),
                                    IconButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        icon: Icon(Icons.close))
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Expanded(
                                      child: textFelids(
                                        enabledBorderColor: Colors.blue,
                                        hintText: 'Tax Name*',
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Expanded(
                                      child: textFelids(
                                        enabledBorderColor: Colors.blue,
                                        hintText: 'Tax%',
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                          "Select the number of decimal points up to which you want to round up the tax amount"),
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Dropdown(
                                        items: ["1", "2", "3", "4"],
                                        selectedItem: _selectedItem,
                                        onChanged: (value) {
                                          setModalState(() {
                                            // ✅ Updates modal state properly
                                            _selectedItem = value;
                                          });
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                                
                                Row(
                                  children: [
                                    Checkbox(
                                        value: _ischecked1,
                                        activeColor: primarycolor,
                                        checkColor: Colors.black,
                                        onChanged: (bool? value) {
                                          setModalState(() {
                                            _ischecked1 = value ?? false;
                                          });
                                        }),
                                    Text("Inclide of all items")
                                  ],
                                ),
                                Row(
                                  children: [
                                    Checkbox(
                                        value: _ischecked2,
                                        activeColor: primarycolor,
                                        checkColor: Colors.black,
                                        onChanged: (bool? value) {
                                          setModalState(() {
                                            _ischecked2 = value ?? false;
                                          });
                                        }),
                                    Text("Inclide of all items")
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: CommonButton(
                                      onTap: () {
                                        Navigator.of(context).pop();
                                      },
                                      height: 50,
                                      width: 150,
                                      child: Center(
                                          child: Text(
                                        "submit",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ))),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                );
              },
              child: Text(
                "Add Tax",
                style: TextStyle(
                  fontSize: 12.0,
                  
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              
            )
          ],
        ));
  } 
}
