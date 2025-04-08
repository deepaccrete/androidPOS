import 'package:flutter/material.dart';
import 'package:foodchow/componets/drag&droplist.dart';

class AddressCustomizationScreen extends StatefulWidget {
  @override
  _addressCustomizationScreenState createState() =>
      _addressCustomizationScreenState();
}

class _addressCustomizationScreenState
    extends State<AddressCustomizationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        actions: [
          Row(
            children: [
                Padding(
                   padding: const EdgeInsets.only(right: 80),
                  child: Text("Address Customization",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                ),
                Icon(Icons.person),
                Text("admin"),
            ],
          )
        ],
      ),
    body: DraggableEditableList()
    );
  }
}
