import 'package:flutter/material.dart';
import 'package:foodchow/constant/color.dart';
import 'package:foodchow/screens/Inverntary/stockHistoy.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:foodchow/componets/drawermanage.dart';

class ManageInventory extends StatelessWidget {
  const ManageInventory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        shadowColor: Colors.black,
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.person),
                Text(
                  "Admin",
                  style: GoogleFonts.poppins(),
                ),
              ],
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    "Manage Inventorys",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                 
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => StockHistory()
                              )
                              );
                    },
                    label: Text(  
                      "Manage Inventory",
                      style: TextStyle(color: Colors.white,fontSize: 8),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      backgroundColor: primarycolor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              
              Padding(
                padding: EdgeInsets.only(
                  left: 20,
                ),
                child: Text(
                  "Category",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              )
            ],
          ),
        ],
      ),
      drawer: DrawerManage(
        sync: false,
      ),
    );
  }
}
