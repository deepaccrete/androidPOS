import 'package:flutter/material.dart';
import 'package:foodchow/componets/Button.dart';
import 'package:foodchow/constant/color.dart';

class Support extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primarycolor,
        title: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            "Need Help?",
            style: TextStyle(fontSize: 20.0),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 200, top: 8),
            child: Text(
              "Contect Us",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
          Card(
            margin: EdgeInsets.all(10),
            borderOnForeground: true,
            child: Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly  ,
                children: [
                  Icon(
                    Icons.phone,
                    color: primarycolor,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "012-345-6789",
                    style: TextStyle(fontSize: 18.0),
                  ),
                  CommonButton(
                    width: 50.0,
                    height: 50.0,
                    onTap: () {},

                    child: Icon(Icons.phone,color: Colors.white,),
                  ),
                  CommonButton(
                    width: 50.0,
                    height: 50.0,
                      onTap: () {},
                      
                      child: Icon(
                        Icons.email,
                        color: Colors.white,
                      )),
                ],
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.all(10),
            borderOnForeground: true,
            child: Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly  ,
                children: [
                  Icon(
                    Icons.attach_email_outlined,
                    color: primarycolor,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "support@foodchow.com",
                    style: TextStyle(fontSize: 18.0),
                  ),
                  CommonButton(
                    bordercircular: 5,
                    width: 60.0,
                    height: 30.0,
                    onTap: () {},

                    child:Text("Write us ",style: TextStyle(color: Colors.black),),
                  ),
                  
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
