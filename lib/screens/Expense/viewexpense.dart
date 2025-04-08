import 'package:flutter/material.dart';
import 'package:foodchow/constant/color.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewExpense extends StatefulWidget {
  const ViewExpense({super.key});

  @override
  State<ViewExpense> createState() => _ViewExpenseState();
}

class _ViewExpenseState extends State<ViewExpense> {
  DateTime? _fromDatee;
  DateTime? _toDate;


  Future<void> _pickFromDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: _fromDatee??DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2100));

    if (pickedDate != null) {
      setState(() {
        _fromDatee = pickedDate;
        if (_toDate != null && _toDate!.isBefore(_fromDatee!)) {
          _toDate = null;
        }
      });
    }
  }

  // Function to pick To Date

  Future<void> _pickToDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: _toDate ?? _fromDatee ?? DateTime.now(),
        firstDate: _fromDatee ?? DateTime(2000),
        lastDate: DateTime(2100));
    if (pickedDate != null) {
      setState(() {
        _toDate = pickedDate;
      });
    }
  }
  @override
  Widget build(BuildContext context) {



    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Start Date',style: GoogleFonts.poppins(),),
                  // SizedBox(height:15),

                  InkWell(
                    onTap: (){
                      _pickFromDate(context);
                    },
                    child: Container(
                      padding: EdgeInsets.all(5),
                      width: width * 0.4,
                      height: height * 0.05,
                      decoration:BoxDecoration(
                        border: Border.all(color:primarycolor)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            _fromDatee == null
                                ? ' DD/MM/YYYY'
                                : '${_fromDatee!.day}/${_fromDatee!.month}/${_fromDatee!.year}',textAlign: TextAlign.center,
                          ),
                          Icon(Icons.date_range)
                        ],
                      )
                    ),
                  )
                ],
              ),
                Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('End Date',style: GoogleFonts.poppins(),),
                  // SizedBox(height:15),

                  InkWell(
                    onTap: _fromDatee ==null ? null: ()=> _pickToDate(context),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      width: width * 0.4,
                      height: height * 0.05,
                      decoration:BoxDecoration(
                        border: Border.all(color:primarycolor)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            _toDate == null
                                ? ' DD/MM/YYYY'
                                : '${_toDate!.day}/${_toDate!.month}/${_toDate!.year}',textAlign: TextAlign.center,
                          ),
                          Icon(Icons.date_range)
                        ],
                      )
                    ),
                  )
                ],
              )
              ],
            ),SizedBox(height: 25,),
            Container(
             alignment: Alignment.bottomCenter,
              height: height * 0.5,
              // alignment: Alignment.center,
              // color: Colors.redAccent,
              // width:width * 0.7,
              child: Image.asset('assets/images/Expense.jpg'),
            )
          ],
        ),
      )),
    );
  }
}
