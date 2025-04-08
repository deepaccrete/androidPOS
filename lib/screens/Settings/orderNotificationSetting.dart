import 'package:flutter/material.dart';

class OrderNotificationsettings extends StatefulWidget {
  @override
  _ordernotificationsettingsState createState() =>
      _ordernotificationsettingsState();
}

class _ordernotificationsettingsState extends State<OrderNotificationsettings> {
  bool _isonline1 = false;
  bool _isonline2 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 1,
          title: Text(
            'Order Notification Settings',
            style: TextStyle(fontSize: 20.0),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [Icon(Icons.person), Text('Admin')],
              ),
            )
          ],
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 10,
                  height: 10,
                  decoration:
                      BoxDecoration(color: Colors.red, shape: BoxShape.circle),
                ),
                Text(
                  "Inactive Decives ",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                      color: Colors.green, shape: BoxShape.circle),
                ),
                Text(
                  "Active Decives ",
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          
          DataTable(
            border: TableBorder(borderRadius: BorderRadius.circular(20)),
            
            columns: [
              
              DataColumn(
                
                  label: Container(
                      color: Colors.blue[300],
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        "Device info",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ))),
              DataColumn(label: Container(
                color: Colors.blue[300],
                padding: EdgeInsets.all(10.0),
                
                child: Text("Status",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),))),
            ],
            rows: [
             
              DataRow(cells: [
                DataCell(Text('Device 1')),
                DataCell(
                  Row(children: [
                    Container(
                      width: 120,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Row(
                        children: [
                          // Online
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _isonline1 = true;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color:
                                      _isonline1 ? Colors.green : Colors.white,
                                  borderRadius: const BorderRadius.horizontal(
                                      left: Radius.circular(30)),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  'Online',
                                  style: TextStyle(
                                    color:
                                        _isonline1 ? Colors.white : Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          // Offline
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _isonline1 = false;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: !_isonline1 ? Colors.red : Colors.white,
                                  borderRadius: const BorderRadius.horizontal(
                                      right: Radius.circular(30)),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  'Offline',
                                  style: TextStyle(
                                    color: !_isonline1
                                        ? Colors.white
                                        : Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
             
              
              ]),
              DataRow(cells: [
                DataCell(Text('Device 2')),
                DataCell(
                  Row(children: [
                    Container(
                      width: 120,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Row(
                        children: [
                          // Online
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _isonline2 = true;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color:
                                      _isonline2 ? Colors.green : Colors.white,
                                  borderRadius: const BorderRadius.horizontal(
                                      left: Radius.circular(30)),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  'Online',
                                  style: TextStyle(
                                    color:
                                        _isonline2 ? Colors.white : Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          // Offline
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _isonline2 = false;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: !_isonline2 ? Colors.red : Colors.white,
                                  borderRadius: const BorderRadius.horizontal(
                                      right: Radius.circular(30)),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  'Offline',
                                  style: TextStyle(
                                    color: !_isonline2
                                        ? Colors.white
                                        : Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
             
              
              ])
            
            ],
          )
        ]));
  }
}
