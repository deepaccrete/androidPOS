import 'package:flutter/material.dart';
import 'package:foodchow/componets/Button.dart';
import 'package:foodchow/componets/Textform.dart';
import 'package:foodchow/constant/color.dart';
import 'package:foodchow/screens/online%20Order/online.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  List<dynamic> items = [
    {
      'title': "Fresh delight Pizza",
       'price': "Rs 149",
        'image':"assets/images/dinnericon.png"
    },
    {
      'title': "Indiana veg pasta",
       'price': "Rs 149",
        'image':"assets/images/dinnericon.png"
    }
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            child: Column(
              children: [
                Row(
                  children: [
                    // Category

                    Container(
                      width: width * 0.3,
                      height: height,
                      color: Colors.blue.shade50,
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: width * 0.3,
                            height: height * 0.04,
                            decoration: BoxDecoration(
                                color: primarycolor,
                                borderRadius: BorderRadius.circular(12)),
                            child: Text(
                              'Categories',
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: width * 0.25,
                            height: height * 0.04,
                            decoration: BoxDecoration(
                                color: Colors.teal[100],
                                borderRadius: BorderRadius.circular(2),
                                border: Border.all(
                                  color: primarycolor,
                                )),
                            child: Text(
                              'Veg Pizza',
                              style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                          )
                        ],
                      ),
                    ),

                    // Online Order Column
                    Expanded(
                      child: Container(
                        height: height,
                        // color: Colors.red,
                        child: Column(
                          children: [
                            CommonButton(
                              borderwidth: 1,
                              bgcolor: screenBGColor,
                              bordercolor: Colors.black,
                              bordercircular: 12,
                              width: width * 0.65,
                                height: height * 0.045,
                                onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> Online()));
                                }, child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.shopping_cart_outlined),
                                    Text('Online Order',style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                                  ],
                                )),

                            SizedBox(height: 15),

                            // text from
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: width * 0.32,
                                    height: height * 0.04,
                                    // color: Colors.red,
                                    child: TextField(
                                      decoration:  InputDecoration(
                                        hintText: 'Code Here',
                                        hintStyle: GoogleFonts.poppins(color: Colors.grey,),
                                        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                                        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                                        border: OutlineInputBorder()

                                       ),
                                    )
                                  ),
                                  SizedBox(width: 2,),
                                  Container(
                                    width: width * 0.32,
                                    height: height * 0.04,

                                    // color: Colors.red,
                                    child:  TextField(
                                      decoration:  InputDecoration(
                                          hintText: 'Items Here',
                                          hintStyle: GoogleFonts.poppins(color: Colors.grey),
                                          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                                          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                                          border: OutlineInputBorder()

                                      ),
                                    )
                                  ),
                                ],
                              ),
                            ),

                            Container(
                              // color: Colors.green,
                              width: width  ,
                              height: height,
                              child: GridView.builder(
                                gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2, // Two items per row
                                  crossAxisSpacing: 10, // Space between columns
                                  mainAxisSpacing: 10, // Space between rows
                                  childAspectRatio: 0.7, // Adjust item size
                                ),
                                   itemCount: items.length,
                                  itemBuilder:(context, index){
                                return Card(
                                  child: Container(
                                    // color: Colors.red,
                                    width: width * 0.3,
                                    height: height * 0.2,
                                    child: Column(
                                      children: [
                                        Image.asset(items[index]['image'],fit: BoxFit.fill,width: 100,height: 100,),
                                        Text(items[index]['title'],textAlign: TextAlign.center,style: GoogleFonts.poppins(color: Colors.indigo.shade900,fontWeight: FontWeight.w600),),
                                        SizedBox(height: 5,),
                                        Text(items[index]['price'],textAlign: TextAlign.center,style: GoogleFonts.poppins(color: Colors.indigo.shade900,fontWeight: FontWeight.w600))

                                      ],
                                    ),
                                  ),
                                );
                              }),
                            )
                          ],
                        ),
                      ),
                    ),

                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
