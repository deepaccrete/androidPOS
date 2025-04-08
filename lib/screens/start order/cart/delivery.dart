import 'package:flutter/material.dart';
import 'package:foodchow/componets/Button.dart';
import 'package:foodchow/constant/color.dart';
import 'package:google_fonts/google_fonts.dart';

class Delivery extends StatelessWidget {
  const Delivery({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
          child: Column(
            children: [
              // item Row
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                color: Colors.teal.shade100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Items',
                      style:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    Text('Qty',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500)),
                    Text('Amount',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500)),
                  ],
                ),
              ),

              // NewOrder
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                width: width * 0.3,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 2, color: primarycolor),
                    borderRadius: BorderRadius.circular(5)),
                child: Text(
                  'New Order',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
              ),

              // Items

              SizedBox(height: 10,),
              Container(
                alignment: Alignment.topCenter,
                height: height * 0.5,
                // color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Fruit Punch'),
                    Row(
                      children: [
                        Icon(Icons.remove,color: primarycolor,),
                        SizedBox(width: 5,),
                        Container(
                          alignment: Alignment.center,
                          width: width * 0.06,
                          height: height * 0.04,
                          decoration: BoxDecoration(
                            // color: Colors.red,
                              border: Border.all(color: Colors.grey),
                              shape: BoxShape.circle),
                          child: Text(
                            '1',
                            style: GoogleFonts.poppins(),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Icon(Icons.add,color: primarycolor,)
                      ],
                    ),

                    Text('149.00',style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),




              CommonButton(
                  width: width*0.3,
                  height: height * 0.05,
                  onTap: (){}, child: Center(child: Text('Add Item',style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 14),))),
              SizedBox(height: 10,),

              Container(
                width: width,
                height: height * 0.5,
                color: Colors.indigo.shade50,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total:',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold),),
                        Text('Rs.149.00',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold),)
                      ],
                    ),
                    SizedBox(height: 25,),
                    // button
                    CommonButton(
                        width: width,
                        height: height * 0.06,
                        onTap: (){}, child: Center(child: Text('Settle & Print Bill ',style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 18),))),


                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

