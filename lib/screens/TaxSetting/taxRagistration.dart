import 'package:flutter/material.dart';
import 'package:foodchow/componets/drawermanage.dart';
import 'package:foodchow/componets/listmenu.dart';
import 'package:foodchow/componets/manyListViewWithBottomSheet.dart';


class Taxragistration extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        actions: [
          Padding(padding: 
          EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(Icons.person),
              Text('Admin')
            ],
          ),)
        ],
      ),
      
      body:
          MultipleListView(
            lists: [['TAX NAME : ','DRR','TAX NUMBER : ','25412']], ),
        
      
      
    );
  }
}