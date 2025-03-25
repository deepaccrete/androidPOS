import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCategory extends StatefulWidget {
  final String? imagePath;
  final String title;
  final String itemCount;
  final bool isActive;
  final VoidCallback onEdit;
  final VoidCallback onDelet;
  final ValueChanged<bool> onToggle;

  const CustomCategory({super.key, required this.title, required this.itemCount, required this.isActive, required this.onEdit, required this.onDelet, required this.onToggle,this.imagePath});

  @override
  State<CustomCategory> createState() => _CustomCategoryState();
}

class _CustomCategoryState extends State<CustomCategory> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                  child: Icon(Icons.menu,size: 30,color: Colors.grey)
              ),
              Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child:   widget.imagePath != null
                      ? Image.file(File(widget.imagePath!), fit: BoxFit.cover)
                     : Icon(Icons.image, size: 50, color: Colors.grey),
                  // Icon(Icons.image,size: 50,color: Colors.grey,)
              ),
                SizedBox(width: 5,),

                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.title ,
                      style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.bold),),
                      SizedBox(height: 5,),
                      Text('${widget.itemCount} item Added',style: GoogleFonts.poppins(color: Colors.grey),)
                    ],
                  ),
                ),
            ],
          ),


              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Container(
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height:10,
                            width: 20,
                            child: Transform.scale(
                                scale: 0.6,
                                child: Switch(value: widget.isActive,onChanged: widget.onToggle,)),
                          ),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Container(
                                        width: 25,
                                        height: 25,
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade50,
                                          borderRadius: BorderRadius.circular(5)
                                        ),
                                        child: IconButton(
                                          icon: Icon(Icons.edit, color: Colors.grey,size:13,),
                                          onPressed: widget.onEdit,
                                        ),
                                      ),
                                      SizedBox(width: 3,),
                                      Container(
                                        width: 25,
                                        height: 25,
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.circular(5)
                                        ),
                                        child: IconButton(
                                          icon: Icon(Icons.delete, color: Colors.white,size: 13,),
                                          onPressed: widget.onDelet,
                                        ),
                                      ),

                                    ],
                                  )
                        ],
                      ),
                    ),
                  ],
                ),
              )







        ],
      ),
    );
  }
}
