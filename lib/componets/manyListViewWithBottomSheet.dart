// androidPOS/lib/componets/multipleListView.dart
import 'package:flutter/material.dart';
import 'package:foodchow/componets/Button.dart';
import 'package:foodchow/componets/inputTextFields.dart';
import 'package:foodchow/componets/mulTextFelids&userinfoPopUp.dart';
import 'package:foodchow/constant/color.dart';

const CommonTextSize = 10.0;

class MultipleListView extends StatefulWidget {
  final List<List<String>> lists;
  
  final Color? leadingColor;

  MultipleListView({
    Key? key,
    required this.lists,
    
    this.leadingColor = Colors.orange,
  }) : super(key: key);

  @override
  _MultipleListViewState createState() => _MultipleListViewState();
}

class _MultipleListViewState extends State<MultipleListView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: widget.lists.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Card(
                    elevation: 3,
                    child: ListTile(
                      title: Row(
                        children: [
                          Text(
                            widget.lists[index][0],
                            style: TextStyle(
                                fontSize: CommonTextSize,
                                color: widget.leadingColor ?? Colors.black),
                          ),
                          SizedBox(
                              width: 10), // add some space between the texts
                          Text(widget.lists[index][1],
                              style: TextStyle(
                                  fontSize: CommonTextSize,
                                  color: Colors.green)),
                        ],
                      ),
                      subtitle: Row(
                        children: [
                          Text(
                            widget.lists[index][2],
                            style: TextStyle(
                                fontSize: CommonTextSize,
                                color: widget.leadingColor),
                          ),
                          SizedBox(
                              width: 10), // add some space between the texts
                          Text(
                            widget.lists[index][3],
                            style: TextStyle(
                                fontSize: CommonTextSize, color: Colors.green),
                          ),
                        ],
                      ),
                      trailing: IconButton(
                        icon: Icon (Icons.edit),
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(5),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Tax Ragistration',
                                        style: TextStyle(
                                            color: Colors.orangeAccent,
                                            fontSize: 20),
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        icon: Icon(
                                          Icons.cancel,
                                        ),
                                      ),
                                    ],
                                  ),
                                  
                                  Expanded(
                                      child: Text(
                                    "Please fill in the required fields and press update and this is data want to able to give the some data ",
                                    style: TextStyle(fontSize: 15.0),
                                  )),
                                  Expanded(
                                    child: InputTextFields(
                                      Textdata: "text data",
                                      titleText: "Text Ragistration",
                                    ),
                                  ),
                                  Expanded(
                                    child: InputTextFields(
                                      Textdata: "text Number",
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: CommonButton(
                                      onTap: () {
                                        Navigator.of(context).pop();
                                      },
                                      bordercircular: 10.0,
                                      height: 50,
                                      width: 150,
                                      child: Center(
                                          child: Text(
                                        "Update",
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      )),
                                      
                                    ),
                                  )
                                ],
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
