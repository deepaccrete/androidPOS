import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:foodchow/constant/color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../componets/Button.dart';
import '../../../componets/custom_category.dart';

class CategoryTab extends StatefulWidget {
  const CategoryTab({super.key});

  @override
  State<CategoryTab> createState() => _CategoryTabState();
}

class _CategoryTabState extends State<CategoryTab> {
  TextEditingController SearchController = TextEditingController();
  TextEditingController CategoryController = TextEditingController();
  List<Map<String,dynamic>> CategoyList = [];
  File? _selectedImage;
  final ImagePicker _picker = ImagePicker();
  bool isActive = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loadCategories();
  }

 //  Save categories to SharedPRefrences
 Future<void> _saveCategories() async {
   final prefs =await SharedPreferences.getInstance();
   prefs.setString('categories', jsonEncode(CategoyList));
 } 
 
  // Load Categories From SharedPrefrence
  Future<void> _loadCategories() async{
   final prefs = await SharedPreferences.getInstance();
   final data = prefs.getString('categories');
   if(data != null){
     setState(() {
       CategoyList = List<Map<String,dynamic>>.from(jsonDecode(data));

     });
   }
  }

  // function to open bottom sheet
  void _showImagePicker() {
    showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        builder: (context) {
          return Padding(
            padding: EdgeInsets.all(20.0),
            child: Container(
              width: double.infinity,
              height: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => _pickImage(ImageSource.gallery),
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
            ),
          );
        });
  }

  // function for image pick
  Future<void> _pickImage(ImageSource source) async {
    final pickedFile = await _picker.pickImage(source: source);
    if (pickedFile != null) {
      setState(() {
        _selectedImage = File(pickedFile.path);
      });
    }
    Navigator.pop(context);
  }

  // clear image after refresh
  void _clearImage() {
    setState(() {
      _selectedImage = null;
      CategoryController.clear();
      // Navigator.pop(context);
    });
  }
  /// Add category to the list and save
  void _addcategory (){
    if(CategoryController.text.isNotEmpty){
      setState(() {
        CategoyList.add(
            {"title": CategoryController.text,
              "imagePath": _selectedImage !=null ?_selectedImage!.path : null  //store only if selected
            });
        _saveCategories();
      });
      _clearImage();
      Navigator.pop(context);
    }
  }

  // Delete category and Update SharedPreferences

  void _deleteCategory(int index)async{
    setState(() {
      CategoyList.removeAt(index);
      _saveCategories();
    });
    // save updated list
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('categories', jsonEncode(CategoyList));
  }

  //

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              // search Category
              Container(
                // height: height * 0.7,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 5),
                      child: TextFormField(
                        controller: SearchController,
                        decoration: InputDecoration(
                          hintText: "Search Category",
                          hintStyle: GoogleFonts.poppins(
                              color: Colors.grey, fontSize: 16),
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 16),
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

                  ],
                ),
              ),
              // Spacer(),

              Column(
                children: [
                CategoyList.isEmpty? 
                  Container(
                    height: height * 0.6,
                    width: width,
                    // color: Colors.green,
                    // color: Colors.red,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/not.jpg',height: 250,),
                        Text('No Category Found',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w500),)
                      ],
                    ),
                  ):
                    Container(
                      // color: Colors.purple,
                      height: height * 0.6,
                      width: width,
                      child: ListView.builder(
                          itemCount: CategoyList.length,
                          itemBuilder: (context, index){
                            var category = CategoyList[index];
                        return Card(
                          // margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          shape: RoundedRectangleBorder(),
                          child: Container(
                            // color: Colors.redAccent,
                            width: double.infinity,
                            height: height * 0.09,
                            child:CustomCategory(
                                imagePath: category['imagePath'],
                                // _selectedImage != null
                                //     ?Image.file(_selectedImage!, height:50,width: 50,)
                                // : Icon(Icons.image,size: 50,color: Colors.grey,),
                                itemCount: 0.toString(),
                              title: category['title'],
                              isActive: isActive,
                              onDelet:(){
                                _deleteCategory(index);
                              },
                              onEdit: (){},
                              onToggle: (bool value){
                              setState(() {
                                isActive = value;
                              });
                              }
                            )
                          ),
                        );
                      }),
                    )

                ],
              ),
              // Button  Add Category
              CommonButton(
                  width: width * 0.40,
                  height: height * 0.06,
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            width: double.infinity,
                            height: height * 0.5,
                            padding: EdgeInsets.all(20),
                            child: Column(
                              children: [
                                Text(
                                  'Add Category',
                                  style: GoogleFonts.poppins(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400),
                                ),
                                Divider(),
                                TextField(
                                  controller: CategoryController,
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(2)),
                                    labelStyle: GoogleFonts.poppins(
                                      color: Colors.grey,
                                    ),
                                    border: OutlineInputBorder(),
                                    labelText: "Category Name (English)",
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                SizedBox(height: 10),
                                InkWell(
                                    onTap: _showImagePicker,
                                    child: Column(
                                      children: [
                                        Container(
                                            // color:Colors.red,
                                            height: 150,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.grey),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: _selectedImage != null
                                                ? Image.file(
                                                    _selectedImage!,
                                                    fit: BoxFit.cover,
                                                    height: 50,
                                                    width: 150,
                                                  )
                                                : Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Center(
                                                          child: Icon(
                                                              Icons.image,
                                                              color:
                                                                  Colors.grey,
                                                              size: 50)),
                                                      SizedBox(
                                                        height: 10,
                                                      ),
                                                      Text(
                                                        'Upload Image',
                                                        style:
                                                            GoogleFonts.poppins(
                                                                fontSize: 18,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500),
                                                      ),
                                                      Text('600X400')
                                                    ],
                                                  )),
                                        Text(
                                          'Upload Image (png , .jpg, .jpeg) upto 3mb',
                                          style: GoogleFonts.poppins(
                                              color: Colors.grey),
                                        )
                                      ],
                                    )),
                                SizedBox(
                                  height: 25,
                                ),
                                CommonButton(
                                    onTap:(){
                                      _addcategory();
                                      // _clearImage();
                                    },
                                    // bgcolor: Colors.white,
                                    // bordercolor: Colors.deepOrange,
                                    height: height * 0.07,
                                    width: width * 0.9,
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
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          'Add Category',
                                          style: GoogleFonts.poppins(
                                              fontSize: 16,
                                              color: Colors.white),
                                        )
                                      ],
                                    )),
                              ],
                            ),
                          );
                        });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Icon(Icons.add),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Add Category',
                        style: GoogleFonts.poppins(
                            color: Colors.white, fontSize: 16),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
