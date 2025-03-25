import 'package:flutter/material.dart';
import 'package:foodchow/componets/Button.dart';
import 'package:foodchow/componets/Textform.dart';
import 'package:foodchow/componets/bottomsheet.dart';
import 'package:foodchow/constant/color.dart';
import 'package:google_fonts/google_fonts.dart';

class AllTab extends StatefulWidget {
  const AllTab({super.key});

  @override
  State<AllTab> createState() => _AllTabState();
}
List <String> options = ['Each', 'Weight'];

class _AllTabState extends State<AllTab> {



  TextEditingController SearchController = TextEditingController();
  TextEditingController itemsNameController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();


 String groupValue = 'Each';
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;



    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: height * 0.7,
                child: Column(

                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      child: TextFormField(
                        controller: SearchController,
                        decoration: InputDecoration(
                          hintText: "Search Category",
                          hintStyle: GoogleFonts.poppins(color: Colors.grey, fontSize: 16),
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Icon(Icons.search, color: Colors.teal),
                          ),
                        ),
                      ),
                    ),
                    
                    SizedBox(height: 25,),
                    Text('No such Category Found!',style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w400),)
                  ],
                ),
              ),
           // Spacer(),
           //    CommonButton(
           //     width: width * 0.35,
           //     height: height * 0.06,
           //     // onTap: (){
           //     //   showModalBottomSheet(
           //     //       isScrollControlled: true,
           //     //       shape: RoundedRectangleBorder(
           //     //         borderRadius: BorderRadius.vertical(top: Radius.circular(50))
           //     //       ),
           //     //       context: context, builder: (BuildContext context){
           //     //     return Container(
           //     //       padding: EdgeInsets.only(left: 20, right: 20, top: 20,bottom: 20),
           //     //       height: height,
           //     //       width: width,
           //     //       child: Column(
           //     //         children: [
           //     //           Text('Add Items',style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w700),),
           //     //         ],
           //     //       ),
           //     //     );
           //     //   });
           //     //   // _showAddItemBottomSheet(c)
           //     //
           //     // },
           //
           //        onTap: (){
           //       // _showAddItemBottomSheet(context);
           //
           //
           //            showModalBottomSheet(
           //              context: context,
           //              isScrollControlled: true, // Allows full-screen height
           //              shape: RoundedRectangleBorder(
           //                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
           //              ),
           //              builder: (BuildContext context) {
           //                return Padding(
           //                  padding: EdgeInsets.only(
           //                    bottom: MediaQuery
           //                        .of(context)
           //                        .viewInsets
           //                        .bottom,
           //                  ),
           //                  child: Container(
           //                    // color: Colors.red,
           //                    padding: EdgeInsets.fromLTRB(16,16,16,40),
           //                    child: Column(
           //                      mainAxisSize: MainAxisSize.min,
           //                      crossAxisAlignment: CrossAxisAlignment.start,
           //                      children: [
           //                        Center(
           //                          child: Text(
           //                            "Add Item",
           //                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
           //                          ),
           //                        ),
           //                        SizedBox(height: 10),
           //                        TextField(
           //                          controller: itemsNameController,
           //                          decoration: InputDecoration(
           //                            focusedBorder: OutlineInputBorder(
           //                                borderRadius: BorderRadius.circular(2)
           //                            ),
           //
           //                            labelStyle: GoogleFonts.poppins(color: Colors.grey,),
           //                            border: OutlineInputBorder(
           //                            ),
           //                            labelText: "Item Name (English)",
           //                          ),
           //                        ),
           //                        SizedBox(height: 10),
           //
           //                        Row(
           //                          children: [
           //                            Text("Sold by:"),
           //                            Row(
           //                              children: [
           //                                Radio(
           //                                    value: "Each",
           //                                    groupValue:groupValue ,
           //                                    onChanged: (value) {
           //                                  setState(() {
           //                                    groupValue = value!;
           //                                  });
           //                                }),
           //                                Text("Each"),
           //                              ],
           //                            ),
           //                            Row(
           //                              children: [
           //                                Radio(value: "Weight", groupValue:groupValue , onChanged: (value) {
           //                                  setState(() {
           //                                    groupValue= value!;
           //                                  });
           //                                }),
           //                                Text("Weight"),
           //                              ],
           //                            ),
           //                          ],
           //                        ),
           //                        TextField(
           //                          controller: priceController,
           //                          decoration: InputDecoration(
           //                            focusedBorder: OutlineInputBorder(
           //                                borderRadius: BorderRadius.circular(2)
           //                            ),
           //
           //                            border: OutlineInputBorder(
           //                            ),
           //                            labelText: "Price",
           //                            labelStyle: GoogleFonts.poppins(color: Colors.grey,),
           //
           //                          ),
           //                          keyboardType: TextInputType.number,
           //                        ),
           //                        SizedBox(height: 10),
           //                        Container(
           //                          // padding: EdgeInsets.all(10),
           //                          decoration: BoxDecoration(
           //                              border: Border.all(width: 0.5,color: Colors.grey)
           //                          ),
           //                          child: DropdownButtonFormField<String>(
           //
           //                            items: [
           //                              DropdownMenuItem(child: Text("Category 1"), value: "1"),
           //                              DropdownMenuItem(child: Text("Category 2"), value: "2"),
           //                            ],
           //                            onChanged: (value) {},
           //                            decoration: InputDecoration(labelText: "Select Category"),
           //                          ),
           //                        ),
           //                        SizedBox(height: 10),
           //                        CheckboxListTile(
           //                          title: Text("Veg"),
           //                          value: true,
           //                          onChanged: (value) {},
           //                          controlAffinity: ListTileControlAffinity.leading,
           //                        ),
           //                        TextField(
           //                          decoration: InputDecoration(
           //                              focusedBorder: OutlineInputBorder(
           //                                  borderRadius: BorderRadius.circular(2)
           //                              ),
           //
           //                              border: OutlineInputBorder(
           //                              ),
           //                              labelStyle: GoogleFonts.poppins(color: Colors.grey,),
           //                              labelText: "Description (Optional)"),
           //                        ),
           //                        SizedBox(height: 10,),
           //                        Container(
           //                          decoration: BoxDecoration(
           //                              border: Border.all()
           //                          ),
           //                          child: Row(
           //                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
           //                            children: [
           //                              Text("Manage Inventory"),
           //                              Row(
           //                                children: [
           //                                  ElevatedButton(
           //                                    onPressed: () {},
           //                                    child: Text("Yes"),
           //                                  ),
           //                                  SizedBox(width: 10),
           //                                  ElevatedButton(
           //                                    onPressed: () {},
           //                                    child: Text("No"),
           //                                    style: ElevatedButton.styleFrom(
           //                                        backgroundColor: primarycolor),
           //                                  ),
           //                                ],
           //                              ),
           //                            ],
           //                          ),
           //                        ),
           //                        SizedBox(height: 10),
           //                        GestureDetector(
           //                          onTap: () {},
           //                          child: Container(
           //                            height: 150,
           //                            decoration: BoxDecoration(
           //                              border: Border.all(color: Colors.grey),
           //                              borderRadius: BorderRadius.circular(10),
           //                            ),
           //                            child: Center(child: Icon(Icons.image, size: 50)),
           //                          ),
           //                        ),
           //                        SizedBox(height: 10),
           //                        Row(
           //                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
           //                          children: [
           //                            ElevatedButton.icon(
           //                              onPressed: () {},
           //                              icon: Icon(Icons.add),
           //                              label: Text("Add More Info"),
           //                            ),
           //                            ElevatedButton.icon(
           //                              onPressed: () {},
           //                              icon: Icon(Icons.add),
           //                              label: Text("Quick Add"),
           //                              style: ElevatedButton.styleFrom(
           //                                  backgroundColor: Colors.green),
           //                            ),
           //                          ],
           //                        ),
           //                      ],
           //                    ),
           //                  ),
           //                );
           //              },
           //            );
           //
           //        },
           //     child:Row(
           //       mainAxisAlignment: MainAxisAlignment.center,
           //   children: [
           //     Container(
           //         child: Icon(Icons.add),
           //       decoration: BoxDecoration(
           //         color: Colors.white,
           //         borderRadius: BorderRadius.circular(15)
           //       ),
           //     ),
           //     SizedBox(width: 5,),
           //     Text('Add items',style: GoogleFonts.poppins(color: Colors.white, fontSize: 16),)
           //   ],
           // ))
              BottomsheetMenu()
            ],
          ),
        ),
      ),
    );
  }


}


