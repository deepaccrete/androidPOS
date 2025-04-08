import 'package:flutter/material.dart';
import 'package:foodchow/componets/Button.dart';
import 'package:foodchow/constant/color.dart';
import 'package:google_fonts/google_fonts.dart';

class NeedhelpDrawer extends StatelessWidget {
  const NeedhelpDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final width= MediaQuery.of(context).size.width * 1;
    final heigth = MediaQuery.of(context).size.height * 1;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primarycolor,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
            icon:Icon(Icons.arrow_back_ios_new,color: Colors.white,)),
        title:Text('Need Help?',style: GoogleFonts.poppins(color: Colors.white),),
      centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              Text('Contact Us',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w700),),
              Container(
                // margin: EdgeInsets.all(15),
                height: heigth * 0.12,
                padding: EdgeInsets.all(5),
                child: Card(
                  elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Container(
                        padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(15)
                          ),
                          child: Icon(Icons.phone,color: Colors.white,size: 20,)),

                      Text('+91 1234567890',style: GoogleFonts.poppins(fontSize: 16,color: Colors.black),),

                      Row(children: [
                        Container(
                          width: width * 0.2,
                  height: heigth * 0.04,
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(5)
                            ),
                            child: Icon(Icons.phone,color: Colors.white,size: 30,)),
                        SizedBox(width: 10,),
                        Container(
                          width: width * 0.2,
                  height: heigth * 0.04,
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(5)
                            ),
                            child: Icon(Icons.telegram,color: Colors.white,size: 30,)),

                      ],)

                    ],
                  ),
                ),
              ),),
              SizedBox(height: 25,),
              Container(
                // margin: EdgeInsets.all(15),
                height: heigth * 0.12,
                padding: EdgeInsets.all(5),
                child: Card(
                  elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Container(
                        padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(15)
                          ),
                          child: Icon(Icons.message,color: Colors.white,size: 20,)),

                      Text('support@foodchow.com',style: GoogleFonts.poppins(fontSize: 16,color: Colors.black),),

                CommonButton(
                    height: heigth * 0.04,
                    width:  width * 0.2,
                    bordercircular: 0,
                    onTap: (){}, child: Text('Write US',style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.w500)))

                    ],
                  ),
                ),
              ),),
            ],
          )
        ),
      ),
    );
  }
}
