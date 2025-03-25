import 'package:flutter/material.dart';
import 'package:foodchow/constant/color.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../componets/Button.dart';

class ChoiceTab extends StatefulWidget {
  const ChoiceTab({super.key});

  @override
  State<ChoiceTab> createState() => _ChoiceTabState();
}

class _ChoiceTabState extends State<ChoiceTab> {
  TextEditingController ChoiceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          // color: Colors.red,
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),

          child: Column(
            children: [
              Container(
                height: height * 0.7,
                // color: Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/not.jpg',height: 250,),
                    Text('No Choices Found',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w500),)
                  ],
                ),
              ),

              Container(
                alignment: Alignment.center,
                child: CommonButton(
                  bordercircular: 30,
                    width: width * 0.40,
                    height: height * 0.06,
                    onTap: (){
                      showModalBottomSheet(context: context,
                          builder: (BuildContext context){
                            return Container(
                              width: double.infinity,
                              height: height *0.35,
                              padding: EdgeInsets.all(20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(

                                    width: width * 0.9,
                                    child: Text('Add Choices',textAlign: TextAlign.start,style:
                                    GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w400),),
                                  ),
                                  SizedBox(height: 25,),
                                  TextField(
                                    controller: ChoiceController,
                                    decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(2)),
                                      labelStyle: GoogleFonts.poppins(
                                        color: Colors.grey,
                                      ),
                                      border: OutlineInputBorder(),
                                      labelText: "Choice Name (English)",
                                    ),
                                  ),
                                  SizedBox(height: 25,),
                                 Row(
                                   children: [
                                     Container(
                                       width:width * 0.55,
                                       child: TextField(
                                         controller: ChoiceController,
                                         decoration: InputDecoration(
                                           focusedBorder: OutlineInputBorder(
                                               borderRadius: BorderRadius.circular(2)),
                                           labelStyle: GoogleFonts.poppins(
                                             color: Colors.grey,
                                           ),
                                           border: OutlineInputBorder(),
                                           labelText: "Add Options",
                                         ),
                                       ),
                                     ),
                                     SizedBox(width: 15,),
                                     CommonButton(
                                       bordercircular: 2,
                                         width: width*0.30,
                                         height: height * 0.05,
                                         bgcolor: Colors.white,

                                         onTap: (){}, 
                                         child: Center(child: Text('Add More',style: GoogleFonts.poppins(color: primarycolor),)))
                                   ],
                                 ),

                                  SizedBox(height: 25,),
                                  CommonButton(
                                    bordercircular: 10,
                                      height: 40,
                                      width:  80,
                                      onTap: (){},
                                      child: Center(child: Text('Save',style: GoogleFonts.poppins(color: Colors.white),)))

                                ],
                              ),
                            );
                          });
                    },

                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Icon(Icons.add),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)
                          ),
                        ),
                        SizedBox(width: 5,),
                        Text('Add Choices',style: GoogleFonts.poppins(color: Colors.white, fontSize: 16),)
                      ],
                    )),
              )

            ],
          ),
        ),
      ),
    );
  }
}
