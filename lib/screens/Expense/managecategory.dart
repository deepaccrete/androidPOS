import 'package:flutter/material.dart';
import 'package:foodchow/componets/Button.dart';
import 'package:foodchow/componets/Textform.dart';
import 'package:foodchow/constant/color.dart';
import 'package:google_fonts/google_fonts.dart';

class ManageCategory extends StatefulWidget {
  const ManageCategory({super.key});

  @override
  State<ManageCategory> createState() => _ManageCategoryState();
}

class _ManageCategoryState extends State<ManageCategory> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios)),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(Icons.person_2_outlined),
              Text('Admin')
            ],
          ),
        )
      ],  
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Manage Category',style:GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),),
              SizedBox(height: 10,),
              CommonButton(
                bordercircular: 0,
                height: height * 0.04,
                  width: width * 0.5,
                  onTap: (){
                  showModalBottomSheet(context: context,
                      builder: (BuildContext context){
                    return Container(
                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                      height:  height * 0.3,
                      width: double.infinity,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Add New Expense Category',style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w500),),
                                InkWell(
                                    onTap: (){
                                      Navigator.pop(context);
                                    },
                                    child: Icon(Icons.cancel,color: Colors.grey,))
                              ],
                            ),
                            
                            SizedBox(height: 25,),
                            
                            Text('Category Name',style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w400),),

                            SizedBox(height: 10,),
                            CommonTextForm(
                              borderc: 0,
                              BorderColor: primarycolor,

                              HintColor: Colors.grey,
                                hintText: 'Enter Category Name',
                                obsecureText: false),
                            
                            SizedBox(height: 15,),
                            
                            CommonButton(
                              bordercircular: 0,
                                height: height* 0.04,
                                onTap: (){}, child: Text('Add',style:GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.w600)))
                            
                          ],
                        ),
                      ),
                    );
                      });
                  },
                  child: Row(children: [
                    Icon(Icons.add,color: Colors.white,),
                    Text('Add New Category',style: GoogleFonts.poppins(color: Colors.white,
                    fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                    )
                  ],))
            ],
          ),
        ),
      ),
    );
  }
}
