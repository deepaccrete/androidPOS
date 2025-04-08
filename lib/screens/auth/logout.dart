import 'package:flutter/material.dart';
import 'package:foodchow/componets/Button.dart';
import 'package:foodchow/constant/color.dart';

class Logout extends StatelessWidget {
  const Logout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      title: Text(
        'Logout?',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      actionsPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CommonButton(
              onTap: () {
                print("Logged out");
                Navigator.of(context).pop();
              },
              width: 100,
              height: 40,
              bgcolor: Colors.red,
              bordercircular: 2,
              bordercolor: Colors.grey,
              child: Text("Logout", style: TextStyle(color: Colors.white)),
              
            ),
            CommonButton(
              onTap: () {
                Navigator.of(context).pop();
              },
              width: 100,
              height: 40,
              bgcolor: primarycolor,
              bordercircular: 2,
              bordercolor: Colors.grey,
              child: Text("Cancel", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ],
    );
  }
}
