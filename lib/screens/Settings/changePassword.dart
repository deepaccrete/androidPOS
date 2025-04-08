import 'package:flutter/material.dart';
import 'package:foodchow/componets/Button.dart';
import 'package:foodchow/componets/dropdown.dart';
import 'package:foodchow/componets/inputTextFields.dart';
import 'package:foodchow/constant/color.dart';

class Changepassword extends StatefulWidget {
  @override
  State<Changepassword> createState() => _ChangepasswordState();
}

class _ChangepasswordState extends State<Changepassword> {
  String selectedItem = 'Select Item';
  bool obscurePass = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        actions: [
          Padding(
            padding: EdgeInsets.all(5.0),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.only(end: 70.0),
                  child: Text(
                    "Change Password",
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
         
          children: [
            SizedBox(height: 15.0),
            Row(
               children: [
                 Padding(
                    padding: const EdgeInsets.only(right: 120),
                   child: Text(" User type"),
                 ),
               ],
             ),
            Container(
              width: MediaQuery.of(context).size.width * 1,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueGrey),
                  borderRadius: BorderRadius.circular(10.0)),
              child: Dropdown(
                  items: ['Select Item', 'Cashier', 'Admin', 'Manager', 'Waiter'],
                  selectedItem: selectedItem,
                  onChanged: (value) {
                    setState(() {
                      selectedItem = value;
                    });
                  }),
            ),
            SizedBox(height: 15.0),
            Row(
               children: [
                 Padding(
                   padding: const EdgeInsets.only(left: 20.0),
                   child: Text(" Password"),
                 ),
               ],
             ),
            Container(
              width: MediaQuery.of(context).size.width * 1,
              
              child: TextFormField(
                obscureText: obscurePass,
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: primarycolor, width: 2.0)),
                  suffixIcon: IconButton(
                    icon: Icon(
                      obscurePass ? Icons.visibility_off : Icons.visibility,
                    ),
                    onPressed: () {
                      setState(() {
                        obscurePass = !obscurePass;
                      });
                    },
                  ),
                ),
              ),
            ),
            SizedBox(height: 15.0),
              Row(
               children: [
                 Padding(
                   padding: const EdgeInsets.only(left: 20.0),
                   child: Text("Cinfirm Password"),
                 ),
               ],
             ),
            Container(
              width: MediaQuery.of(context).size.width * 1,
              child: TextFormField(
              
                obscureText: obscurePass,
                decoration: InputDecoration(
                  hintText: 'Cinfirm Password',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: primarycolor, width: 2.0)),
                  suffixIcon: IconButton(
                    icon: Icon(
                      obscurePass ? Icons.visibility_off : Icons.visibility,
                    ),
                    onPressed: () {
                      setState(() {
                        obscurePass = !obscurePass;
                      });
                    },
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 300.0),
              child: CommonButton(
                width: 300,
                height: 55,
                onTap: () {},
                bordercircular: 20,
                bgcolor: Colors.blueGrey,
                child: Text(
                  "Submit",
                  style:
                      TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
