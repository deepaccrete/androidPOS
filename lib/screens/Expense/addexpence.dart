import 'package:flutter/material.dart';
import 'package:foodchow/componets/Button.dart';
import 'package:foodchow/componets/Textform.dart';
import 'package:foodchow/constant/color.dart';
import 'package:foodchow/screens/Expense/managecategory.dart';
import 'package:google_fonts/google_fonts.dart';

class Addexpence extends StatefulWidget {
  const Addexpence({super.key});

  @override
  State<Addexpence> createState() => _AddexpenceState();
}

class _AddexpenceState extends State<Addexpence> {
  DateTime? _dateselect;

  Future<void> _pickedDate(BuildContext context) async {
    DateTime? _pickedDate = await showDatePicker(
        context: context,
        firstDate: DateTime(2000),
        initialDate: DateTime.now(),
        lastDate: DateTime(2100));

    if (_pickedDate != null) {
      setState(() {
        _dateselect = _pickedDate;
      });
    }
  }

  String Dropvalue = 'Select Category';
  final List<String> items = ['Select Category'];
  String Dropvalue2 = 'Cash';
  final List<String> items2 = ['Cash','Card/Online','Other'];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          // padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Divider(),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Add Expense',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600, fontSize: 18)),
                  CommonButton(
                      bordercircular: 0,
                      bgcolor: Colors.white,
                      bordercolor: primarycolor,
                      width: width * 0.4,
                      height: height * 0.05,
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> ManageCategory()));
                      },
                      child: Text('Manage Category',
                          style: GoogleFonts.poppins(color: primarycolor)))
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(),
              // date and amount
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Date',
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            // fontWeight: FontWeight.w500
                          ),
                          textAlign: TextAlign.start,
                        ),
                        SizedBox(height: 15),
                        InkWell(
                          onTap: () {
                            _pickedDate(context);
                          },
                          child: Container(
                            width: width * 0.45,
                            height: height * 0.06,
                            decoration: BoxDecoration(
                                border: Border.all(color: primarycolor)),
                            child: Center(
                                child: Text(
                              _dateselect == null
                                  ? "Select Date"
                                  : "${_dateselect!.day}/${_dateselect!.month}/${_dateselect!.year}",
                              textAlign: TextAlign.start,
                              style: GoogleFonts.poppins(
                                  color: Colors.grey,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            )),
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Amount (Rs.)',
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            // fontWeight: FontWeight.w400
                          ),
                          textAlign: TextAlign.start,
                        ),
                        SizedBox(height: 15),
                        CommonTextForm(
                          borderc: 0,
                          obsecureText: false,
                          hintText: "Enter Amount",
                          BorderColor: primarycolor,
                          HintColor: Colors.grey,
                        )
                      ],
                    ),
                  ),
                ],
              ),

              // category select
              SizedBox(height: 20),
              Text("Category",
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                  )),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(5),
                width: width * 0.9,
                height: height * 0.06,
                decoration:
                    BoxDecoration(border: Border.all(color: primarycolor)),
                // color: Colors.red,
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                      isExpanded: false,
                      value: Dropvalue,
                      items: items.map((String item) {
                        return DropdownMenuItem(value: item, child: Text(item));
                      }).toList(),
                      onChanged: (String? value) {
                        setState(() {
                          Dropvalue = value!;
                        });
                      }),
                ),
              ),

              SizedBox(height: 20),
              Text('Reasone',style: GoogleFonts.poppins(
                fontSize: 18,
              )),
SizedBox(height:10),
              CommonTextForm(
                borderc: 0,
                obsecureText: false,
                hintText: "Enter Reasone",
                BorderColor: primarycolor,
                HintColor: Colors.grey,
              ),

              SizedBox(height: 20),
              Text('Payment Type',style: GoogleFonts.poppins(
                fontSize: 18,
              )),
              SizedBox(height:10),

              Container(
                padding: EdgeInsets.all(5),

                width: width,
                height: height * 0.06,
                decoration: BoxDecoration(
                  border: Border.all(color: primarycolor)
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    value: Dropvalue2,
                      items: items2.map((String itemm){
                      return DropdownMenuItem(
                        value: itemm,
                          child: Text(itemm));
                      }). toList(),
                      onChanged: (String? value){
                      setState(() {
                        Dropvalue2 = value!;
                      });
                      }),
                ),
              ),

              SizedBox(height:20),
              Container(
                alignment: Alignment.center ,               child: CommonButton(
                 bordercircular: 0,
                  width: width *0.8,
                    height: height * 0.06,
                    onTap: (){},
                    child: Text('Add',style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.w500),)),
              )



            ],
          ),
        ),
      ),
    );
  }
}
