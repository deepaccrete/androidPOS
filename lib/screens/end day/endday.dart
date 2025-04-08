import 'package:flutter/material.dart';
import 'package:foodchow/componets/Button.dart';
import 'package:foodchow/componets/Textform.dart';
import 'package:foodchow/constant/color.dart';
import 'package:google_fonts/google_fonts.dart';

class EndDayDrawer extends StatelessWidget {
  const EndDayDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;

    return Scaffold(
      appBar: AppBar(
        leading:
            IconButton(onPressed: () {
              Navigator.pop(context);
            }, icon: Icon(Icons.arrow_back_ios_new)),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Icon(Icons.person_outline_outlined),
                Column(
                  children: [
                    Text(
                      'Admin',
                      style: GoogleFonts.poppins(fontSize: 16),
                    ),
                    Text(
                      'Admin',
                      style:
                          GoogleFonts.poppins(fontSize: 14, color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'End of Day Settlement',
              style: GoogleFonts.poppins(
                  fontSize: 22, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 25),
            Container(
              padding: EdgeInsets.all(10),
              width: width,
              height: height * 0.06,
              decoration:
                  BoxDecoration(border: Border.all(color: primarycolor)),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Opening Balance:',
                      style: GoogleFonts.poppins(
                          color: primarycolor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'Rs. 500.00',
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w600),
                    )
                  ]),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CommonButton(
                    bordercolor: Colors.teal.shade800,
                    bgcolor: Colors.teal.shade800,
                    bordercircular: 2,
                    width: width * 0.4,
                    height: height * 0.04,
                    onTap: () {},
                    child: Text(
                      'Print Summary',
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    )),
                CommonButton(
                    bordercolor: Colors.teal.shade800,
                    bgcolor: Colors.teal.shade800,
                    bordercircular: 2,
                    width: width * 0.3,
                    height: height * 0.04,
                    onTap: () {},
                    child: Text(
                      'Change',
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    )),
              ],
            ),
            SizedBox(height: 25),
            Text(
              'Order Type',
              style: GoogleFonts.poppins(
                  fontSize: 20, fontWeight: FontWeight.w600),
            ),
            // Take Away
            Container(
              margin: EdgeInsets.symmetric(vertical: 6),
              // spacing between tiles
              decoration: BoxDecoration(
                color: Colors.teal[100], // light teal background
                borderRadius: BorderRadius.circular(8),
              ),
              child: Theme(
                data: Theme.of(context)
                    .copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  tilePadding: EdgeInsets.symmetric(horizontal: 15),
                  // padding inside tile
                  childrenPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Take Away',
                          style:
                              GoogleFonts.poppins(fontWeight: FontWeight.w600)),
                      Text('#3', style: GoogleFonts.poppins()),
                      Text('Rs. 559.00',
                          style:
                              GoogleFonts.poppins(fontWeight: FontWeight.w500)),
                    ],
                  ),
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.circle, color: Colors.green, size: 12),
                            SizedBox(width: 10),
                            Text('Cash', style: GoogleFonts.poppins()),
                          ],
                        ),
                        Text('Rs. 559.00'),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.circle, color: Colors.green, size: 12),
                            SizedBox(width: 10),
                            Text('Total Amount', style: GoogleFonts.poppins()),
                          ],
                        ),
                        Text('Rs. 559.00'),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // Dine In
            SizedBox(
              height: 5,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 6),
              // spacing between tiles
              decoration: BoxDecoration(
                color: Colors.teal[100], // light teal background
                borderRadius: BorderRadius.circular(8),
              ),
              child: Theme(
                data: Theme.of(context)
                    .copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  tilePadding: EdgeInsets.symmetric(horizontal: 15),
                  // padding inside tile
                  childrenPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Dine In',
                          style:
                              GoogleFonts.poppins(fontWeight: FontWeight.w600)),
                      Text('#0', style: GoogleFonts.poppins()),
                      Text('Rs. 0',
                          style:
                              GoogleFonts.poppins(fontWeight: FontWeight.w500)),
                    ],
                  ),
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.circle, color: Colors.green, size: 12),
                            SizedBox(width: 10),
                            Text('Total Amount', style: GoogleFonts.poppins()),
                          ],
                        ),
                        Text('Rs. 0.00'),
                      ],
                    ),
                    SizedBox(height: 5),
                  ],
                ),
              ),
            ),

            // Delivery
            SizedBox(
              height: 5,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 6),
              // spacing between tiles
              decoration: BoxDecoration(
                color: Colors.teal[100], // light teal background
                borderRadius: BorderRadius.circular(8),
              ),
              child: Theme(
                data: Theme.of(context)
                    .copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  tilePadding: EdgeInsets.symmetric(horizontal: 15),
                  // padding inside tile
                  childrenPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Delivery',
                          style:
                              GoogleFonts.poppins(fontWeight: FontWeight.w600)),
                      Text('#0', style: GoogleFonts.poppins()),
                      Text('Rs.0',
                          style:
                              GoogleFonts.poppins(fontWeight: FontWeight.w500)),
                    ],
                  ),
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.circle, color: Colors.green, size: 12),
                            SizedBox(width: 10),
                            Text('Total Amount', style: GoogleFonts.poppins()),
                          ],
                        ),
                        Text('Rs. 0.00'),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            Text(
              'Payment Type',
              style: GoogleFonts.poppins(
                  fontSize: 20, fontWeight: FontWeight.w600),
            ),
            // cash payment
            SizedBox(
              height: 10,
            ),
            Container(
              height: height * 0.06,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              margin: EdgeInsets.symmetric(vertical: 6),
              // spacing between tiles
              decoration: BoxDecoration(
                color: Colors.teal[100], // light teal background
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Cash Paynment',
                      style: GoogleFonts.poppins(fontWeight: FontWeight.w600)),
                  Text('#3',
                      style: GoogleFonts.poppins(fontWeight: FontWeight.w600)),
                  Text('Rs.559',
                      style: GoogleFonts.poppins(fontWeight: FontWeight.w600)),
                ],
              ),
            ),
            // cash payment
            // SizedBox(height: 10,),
            Container(
              height: height * 0.06,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              margin: EdgeInsets.symmetric(vertical: 6),
              // spacing between tiles
              decoration: BoxDecoration(
                color: Colors.teal[100], // light teal background
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Grand Total Payment',
                      style: GoogleFonts.poppins(fontWeight: FontWeight.w600)),
                  Text('#3',
                      style: GoogleFonts.poppins(fontWeight: FontWeight.w600)),
                  Text('Rs.559',
                      style: GoogleFonts.poppins(fontWeight: FontWeight.w600)),
                ],
              ),
            ),

            // Expected Cash
            SizedBox(
              height: 25,
            ),

            Container(
              margin: EdgeInsets.only(bottom: 20),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              width: width,
              height: height * 0.5,
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(10),
                // color: Colors.teal.shade300
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Expected Cash',
                    style: GoogleFonts.poppins(
                        fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 10,),
                  CommonTextForm(
                    hintText: "1059.0",
                    obsecureText: false,
                    BorderColor: primarycolor,
                    borderc: 0,
                  ),
                  SizedBox(height: 25,),
                  Text(
                    'Actual Cash',
                    style: GoogleFonts.poppins(
                        fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 10,),
                  CommonTextForm(
                    hintText: "Enter Actual Cash",
                    obsecureText: false,
                    BorderColor: primarycolor,
                    borderc: 0,
                  ),

                  SizedBox(height: 25,),
                  Text(
                    'Diffrence',
                    style: GoogleFonts.poppins(
                        fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 10,),
                  CommonTextForm(
                    hintText: "",
                    obsecureText: false,
                    BorderColor: primarycolor,
                    borderc: 0,
                  ),

                  SizedBox(height: 10,),
                  CommonButton(
                    height: height * 0.06,
                      bordercircular: 0,
                      onTap: (){}, child: Text('End of The Day',style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.white),))
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
