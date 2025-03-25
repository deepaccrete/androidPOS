import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../componets/Button.dart';

class VariantTab extends StatefulWidget {
  const VariantTab({super.key});

  @override
  State<VariantTab> createState() => _VariantTabState();
}

class _VariantTabState extends State<VariantTab> {
  TextEditingController VariantController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),

          child: Column(
            children: [
              Container(
                height: height * 0.7,
                width: width,
                // color: Colors.green,
                // color: Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // SizedBox(height: 50,),
                    Image.asset('assets/images/not.jpg',height: 250,),
                    Text('No Variant Found',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w500),)
                  ],
                ),
              ),


              Container(
                alignment: Alignment.center,
                child: CommonButton(
                    width: width * 0.40,
                    height: height * 0.06,
                    onTap: (){
                      showModalBottomSheet(context: context,
                          builder: (BuildContext context){
                            return Container(
                              width: double.infinity,
                              height: height *0.3,
                              padding: EdgeInsets.all(20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    // color: Colors.red,
                                    width: width * 0.9,
                                    child: Text('Add Variant',textAlign: TextAlign.start,style:
                                    GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w400),),
                                  ),
                                  SizedBox(height: 25,),
                                  TextField(
                                    controller: VariantController,
                                    decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(2)),
                                      labelStyle: GoogleFonts.poppins(
                                        color: Colors.grey,
                                      ),
                                      border: OutlineInputBorder(),
                                      labelText: "Variant Name (English)",
                                    ),
                                  ),
SizedBox(height: 25,),
                                  CommonButton(
                                      height: 40,
                                      width:  80,
                                      onTap: (){},
                                      child: Center(child: Text('Add',style: GoogleFonts.poppins(color: Colors.white),)))
                                  
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
                        Text('Add Variante',style: GoogleFonts.poppins(color: Colors.white, fontSize: 16),)
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
