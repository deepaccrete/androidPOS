import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:foodchow/componets/Button.dart';
import 'package:foodchow/constant/color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BottomsheetMenu extends StatefulWidget {
  const BottomsheetMenu({super.key});

  @override
  State<BottomsheetMenu> createState() => _BottomsheetMenuState();
}

class _BottomsheetMenuState extends State<BottomsheetMenu> {
  TextEditingController itemsNameController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  File? _seclectedImage;
  final ImagePicker _picker = ImagePicker();

  List<Map<String, dynamic>> categoryList = [];

  Future<void> loadCategories ()async {
    final prefs = await SharedPreferences.getInstance();
    final data = prefs.getString('categories');
    if(data != null){
      setState(() {
        categoryList = List<Map<String, dynamic>>.from(jsonDecode(data));
      });
    }
  }
  String? selectedCategory;
  void _showImagePicker() {
    showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        builder: (context) {
          return Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                width: double.infinity,
                height: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () => _pickIMage(ImageSource.gallery),
                      child: Container(
                        alignment: Alignment.center,
                        width: 150,
                        height: 120,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.photo_library,
                              size: 50,
                              color: primarycolor,
                            ),
                            Text('From Gallery'),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 150,
                      height: 120,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.search,
                            size: 50,
                            color: primarycolor,
                          ),
                          Text('From Search'),
                        ],
                      ),
                    ),
                  ],
                ),
              ));
        });
  }

  // function For Image Pick
  Future<void> _pickIMage(ImageSource source) async {
    final pickedFile = await _picker.pickImage(source: source);
    if (pickedFile != null) {
      setState(() {
        _seclectedImage = File(pickedFile.path);
      });
    }
    Navigator.pop(context);
  }

  // clear image after refresh

  void _clearImage() {
    setState(() {
      _seclectedImage = null;
      itemsNameController.clear();

      Navigator.pop(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;

    return CommonButton(
        width: width * 0.35,
        height: height * 0.06,
        onTap: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true, // Allows full-screen height
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            builder: (BuildContext context) {
              String _SelectedOption = "Each";

              String dropdownvalue = 'Veg';
              String dropDownvaluekg = 'KILOGRAM(KG)';
              var itemskg = ['KILOGRAM(KG)','GRAM(GM)'];
              var items = ['Veg', 'Non-Veg'];
              return StatefulBuilder(builder: (context, setState) {
                return Padding(
                  padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom,
                  ),
                  child: AnimatedContainer(
                    height:
                        // height * 0.95,
                        _SelectedOption == "Weight"
                            ? height * 0.95
                            : height * 0.92,
                    decoration: BoxDecoration(
                        // color: Colors.red,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50))),
                    padding: EdgeInsets.fromLTRB(15, 15, 15, 40),
                    duration: Duration(microseconds: 1),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            "Add Item",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 10),
                        TextField(
                          controller: itemsNameController,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(2)),
                            labelStyle: GoogleFonts.poppins(
                              color: Colors.grey,
                            ),
                            border: OutlineInputBorder(),
                            labelText: "Item Name (English)",
                          ),
                        ),
                        SizedBox(height: 10),
                        //   sold by
                        Row(
                          children: [
                            Text("Sold by:"),
                            Row(
                              children: [
                                Radio(
                                  value: "Each",
                                  groupValue: _SelectedOption,
                                  onChanged: (value) {
                                    setState(() {
                                      _SelectedOption = value!;
                                    });

                                    Future.microtask(() {
                                      setState(() {});
                                    });
                                  },
                                  activeColor: primarycolor,
                                ),
                                Text("Each"),
                              ],
                            ),
                            Row(
                              children: [
                                Radio(
                                  value: "Weight",
                                  groupValue: _SelectedOption,
                                  onChanged: (value) {
                                    setState(() {
                                      _SelectedOption = value!;
                                    });
                                    WidgetsBinding.instance
                                        .addPostFrameCallback((_) {
                                      setState(() {});
                                    });
                                  },
                                  activeColor: primarycolor,
                                ),
                                Text("Weight"),
                              ],
                            ),
                          ],
                        ),
                        // if()
                        // Show Weight TextField when "Weight" is selected
                        // if (_SelectedOption == "Weight")
                        //   Padding(
                        //     padding: const EdgeInsets.only(bottom: 10),
                        //     child: TextField(
                        //       controller: weightController,
                        //       decoration: InputDecoration(
                        //         labelText: "Enter Weight",
                        //         border: OutlineInputBorder(),
                        //       ),
                        //     ),
                        //   ),

                        if (_SelectedOption == "Weight")
                          Container(
                            alignment: Alignment.center,
                            width: double.infinity,
                            // padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border:
                                Border.all(width: 0.5, color: Colors.grey)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton(
                                  // underline:  null,
                                  borderRadius: BorderRadius.circular(2),
                                    isExpanded: true,
                                    icon: Icon(Icons.keyboard_arrow_down_rounded),
                                    value: dropDownvaluekg,
                                    items: itemskg.map((String items){
                                      return DropdownMenuItem(
                                        value: items,
                                          child: Text(items),
                                      );
                                    }).toList(),
                                    onChanged: (String? newValue){
                                      setState((){
                                        dropDownvaluekg = newValue!;
                                      });
                                    }),
                              ),
                            ),
                          ),
                        SizedBox(height: 10,),



                        // price
                        TextField(
                          controller: priceController,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(2)),
                            border: OutlineInputBorder(),
                            labelText: "Price",
                            labelStyle: GoogleFonts.poppins(
                              color: Colors.grey,
                            ),
                          ),
                          keyboardType: TextInputType.number,
                        ),
                        SizedBox(height: 10),

                        // select category
                        Container(
                            // padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 0.5, color: Colors.black38)),


                            child: CommonButton(
                              height: height * 0.06,
                                bgcolor: Colors.transparent,
                                bordercolor: Colors.black12,
                                bordercircular: 0,
                                onTap: ()async {
                                  // Reload the latest category list before showing the bottom sheet
                                await loadCategories();
                                  showModalBottomSheet(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return FutureBuilder(
                                            future: loadCategories(),
                                            builder: (context,snapshot){
                                              return Container(
                                                padding: EdgeInsets.all(20),
                                                height: 300,
                                                child: Column(
                                                  children: [
                                                    Text('Select a Category',style: GoogleFonts.poppins(
                                                      fontSize: 18,fontWeight: FontWeight.w600
                                                    ),),
                                                    Divider(),
                                                    Expanded(child: categoryList.isEmpty
                                                    ?
                                                      Container(
                                                      padding: EdgeInsets.all(30),
                                                      width: double.infinity,
                                                      height: 200,
                                                      child: Column(
                                                        children: [
                                                          Text(
                                                            'No Category added yet!! Please add \n category for your items',
                                                            textAlign: TextAlign.center,
                                                          ),
                                                          CommonButton(
                                                              onTap: () {},
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets.all(
                                                                        8.0),
                                                                child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Container(
                                                                      decoration: BoxDecoration(
                                                                          borderRadius:
                                                                              BorderRadius
                                                                                  .circular(
                                                                                      15),
                                                                          color:
                                                                              Colors.white),
                                                                      child: Icon(
                                                                        Icons.add,
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      width: 10,
                                                                    ),
                                                                    Text(
                                                                      'Add New Category',
                                                                      style: GoogleFonts
                                                                          .poppins(
                                                                              color: Colors
                                                                                  .white),
                                                                    )
                                                                  ],
                                                                ),
                                                              ))
                                                        ],
                                                      ),
                                                    )

                                                        :ListView.builder(
                                                        itemCount: categoryList.length,
                                                        itemBuilder: (context,index){
                                                          return ListTile(
                                                            title: Text(categoryList[index]['title']),
                                                             onTap: (){
                                                              setState((){
                                                                selectedCategory = categoryList[index]['title'];
                                                              });
                                                              Navigator.pop(context);
                                                             },
                                                          );
                                                        })
                                                    )
                                                  ],
                                                ),
                                              );
                                            });
                                        //   Container(
                                        //   padding: EdgeInsets.all(30),
                                        //   width: double.infinity,
                                        //   height: 200,
                                        //   child: Column(
                                        //     children: [
                                        //       Text(
                                        //         'No Category added yet!! Please add \n category for your items',
                                        //         textAlign: TextAlign.center,
                                        //       ),
                                        //       CommonButton(
                                        //           onTap: () {},
                                        //           child: Padding(
                                        //             padding:
                                        //                 const EdgeInsets.all(
                                        //                     8.0),
                                        //             child: Row(
                                        //               mainAxisAlignment:
                                        //                   MainAxisAlignment
                                        //                       .center,
                                        //               children: [
                                        //                 Container(
                                        //                   decoration: BoxDecoration(
                                        //                       borderRadius:
                                        //                           BorderRadius
                                        //                               .circular(
                                        //                                   15),
                                        //                       color:
                                        //                           Colors.white),
                                        //                   child: Icon(
                                        //                     Icons.add,
                                        //                   ),
                                        //                 ),
                                        //                 SizedBox(
                                        //                   width: 10,
                                        //                 ),
                                        //                 Text(
                                        //                   'Add New Category',
                                        //                   style: GoogleFonts
                                        //                       .poppins(
                                        //                           color: Colors
                                        //                               .white),
                                        //                 )
                                        //               ],
                                        //             ),
                                        //           ))
                                        //     ],
                                        //   ),
                                        // );
                                      });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        selectedCategory ?? 'Select Category',
                                        style:
                                            GoogleFonts.poppins(fontSize: 16),
                                      ),
                                      Icon(Icons.arrow_forward_ios)
                                    ],
                                  ),
                                ))),
                        SizedBox(height: 10),

                        // veg
                        Container(
                            alignment: Alignment.center,
                            width: double.infinity,
                            // padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1, color: Colors.black38)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton(
                                    isExpanded: true,
                                    icon: Icon(Icons.keyboard_arrow_down_rounded),
                                    value: dropdownvalue,
                                    items: items.map((String items) {
                                      return DropdownMenuItem(
                                        value: items,
                                        child: Text(items),
                                      );
                                    }).toList(),
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        dropdownvalue = newValue!;
                                      });
                                    }),
                              ),
                            )),
                        SizedBox(
                          height: 10,
                        ),

                        // Description
                        TextField(
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(2)),
                              border: OutlineInputBorder(),
                              labelStyle: GoogleFonts.poppins(
                                color: Colors.grey,
                              ),
                              labelText: "Description (Optional)"),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(border: Border.all()),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Manage Inventory",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,),
                              ),
                              Row(
                                children: [
                                  CommonButton(
                                      onTap: () {},
                                      width: 60,
                                      height: 30,
                                      bgcolor: Colors.white,
                                      bordercolor: primarycolor,
                                      bordercircular: 2,
                                      child: Text(
                                        "Yes",
                                        textAlign: TextAlign.center,
                                      )),
                                  SizedBox(width: 10),
                                  CommonButton(
                                      onTap: () {},
                                      width: 60,
                                      height: 30,
                                      // bgcolor: Colors.white,
                                      bordercolor: primarycolor,
                                      bordercircular: 2,
                                      child: Text(
                                        "No",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(color: Colors.white),
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        // Image
                        GestureDetector(
                            onTap: _showImagePicker,
                            child: Column(
                              children: [
                                Container(
                                    height: 150,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: _seclectedImage != null
                                        ? Image.file(
                                            _seclectedImage!,
                                            fit: BoxFit.cover,
                                            height: 50,
                                            width: 150,
                                          )
                                        : Column(
                                            children: [
                                              Center(
                                                  child: Icon(Icons.image,
                                                      color: Colors.grey,
                                                      size: 50)),
                                              Text(
                                                'Upload Image',
                                                style: GoogleFonts.poppins(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              Text('600X400')
                                            ],
                                          )),
                                Text(
                                  'Upload Image (png , .jpg, .jpeg) upto 3mb',
                                  style:
                                      GoogleFonts.poppins(color: Colors.grey),
                                )
                              ],
                            )),
                        SizedBox(height: 10),

                        // _SelectedOption == "Weight"
                        // ?
                        // CommonButton(
                        // onTap: () {
                        // _clearImage();
                        // },
                        // // bgcolor: Colors.white,
                        // // bordercolor: Colors.deepOrange,
                        // height: height * 0.06,
                        // width: width * 0.45,
                        // child: Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        // children: [
                        // Container(
                        // decoration: BoxDecoration(
                        // color: Colors.white,
                        // borderRadius:
                        // BorderRadius.circular(10)),
                        // child: Icon(Icons.add)),
                        // SizedBox(
                        // width: 5,
                        // ),
                        // Text(
                        // 'Quick Add',
                        // style: GoogleFonts.poppins(
                        // fontSize: 12, color: Colors.white),
                        // )
                        // ],
                        // ))
                        //     : Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // children: [
                        // CommonButton(
                        // onTap: () {},
                        // bgcolor: Colors.white,
                        // bordercolor: Colors.deepOrange,
                        // height: height * 0.06,
                        // width: width * 0.45,
                        // child: Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        // children: [
                        // Container(
                        // decoration: BoxDecoration(
                        // color: Colors.deepOrange,
                        // borderRadius:
                        // BorderRadius.circular(10)),
                        // child: Icon(
                        // Icons.add,
                        // color: Colors.white,
                        // )),
                        // SizedBox(
                        // width: 5,
                        // ),
                        // Text(
                        // 'Add More Info',
                        // style: GoogleFonts.poppins(fontSize: 12),
                        // )
                        // ],
                        // )),
                        // CommonButton(
                        // onTap: () {
                        // _clearImage();
                        // },
                        // // bgcolor: Colors.white,
                        // // bordercolor: Colors.deepOrange,
                        // height: height * 0.06,
                        // width: width * 0.45,
                        // child: Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        // children: [
                        // Container(
                        // decoration: BoxDecoration(
                        // color: Colors.white,
                        // borderRadius:
                        // BorderRadius.circular(10)),
                        // child: Icon(Icons.add)),
                        // SizedBox(
                        // width: 5,
                        // ),
                        // Text(
                        // 'Quick Add',
                        // style: GoogleFonts.poppins(
                        // fontSize: 12, color: Colors.white),
                        // )
                        // ],
                        // )),
                        // ],
                        // ),
                        _SelectedOption == "Weight"
                            ? CommonButton(
                                onTap: () {
                                  _clearImage();
                                },
                                height: height * 0.05,
                                width: width * 0.9,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Icon(Icons.add)),
                                    SizedBox(width: 5),
                                    Text(
                                      'Quick Add',
                                      style: GoogleFonts.poppins(
                                          fontSize: 12, color: Colors.white),
                                    )
                                  ],
                                ),
                              )
                            : Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CommonButton(
                                    onTap: () {},
                                    bgcolor: Colors.white,
                                    bordercolor: Colors.deepOrange,
                                    height: height * 0.06,
                                    width: width * 0.45,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                            decoration: BoxDecoration(
                                                color: Colors.deepOrange,
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Icon(Icons.add,
                                                color: Colors.white)),
                                        SizedBox(width: 5),
                                        Text(
                                          'Add More Info',
                                          style:
                                              GoogleFonts.poppins(fontSize: 12),
                                        )
                                      ],
                                    ),
                                  ),
                                  CommonButton(
                                    onTap: () {
                                      _clearImage();
                                    },
                                    height: height * 0.06,
                                    width: width * 0.45,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Icon(Icons.add)),
                                        SizedBox(width: 5),
                                        Text(
                                          'Quick Add',
                                          style: GoogleFonts.poppins(
                                              fontSize: 12,
                                              color: Colors.white),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              )
                      ],
                    ),
                  ),
                );
              });
            },
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Icon(Icons.add),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'Add items',
              style: GoogleFonts.poppins(color: Colors.white, fontSize: 16),
            )
          ],
        ));
  }
}
