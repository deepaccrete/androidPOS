import 'package:flutter/material.dart';
import 'package:foodchow/constant/color.dart';
import 'package:foodchow/screens/printerSetting/addprinter/Blutooth.dart';
import 'package:foodchow/screens/printerSetting/addprinter/usb.dart';
import 'package:foodchow/screens/printerSetting/addprinter/wifi.dart';
import 'package:google_fonts/google_fonts.dart';

class AddPrinter extends StatefulWidget {
  const AddPrinter({super.key});

  @override
  State<AddPrinter> createState() => _AddPrinterState();
}

class _AddPrinterState extends State<AddPrinter> with SingleTickerProviderStateMixin{
  late TabController tabController;
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);
    tabController.addListener((){
      setState(() {
      });
    });
  }
  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      appBar: AppBar(
      title: Text('Printer Setting',style:GoogleFonts.poppins()),
        leading: BackButton(),
        centerTitle: true,
      bottom: PreferredSize(preferredSize: Size.fromHeight(40),

          child: Container(

            width: width * 0.7,
            child: TabBar(
              controller: tabController,
                dividerColor: Colors.transparent,
                unselectedLabelColor: Colors.grey.shade400,
                indicatorColor: Colors.red,
                indicator:  UnderlineTabIndicator(
                  borderSide: BorderSide(width: 3.0 ,color: primarycolor)
                ),
                tabs:[
                  Tab(
                    text: "WIFI/LAN",
                  ),
                  Tab(
                    text: "Blutooth",
                  ),
                  Tab(
                    text: "USB",
                  )
                ] ),
          )),
      ),
      body: TabBarView(
controller: tabController,
          children: [
            WifiLan(),
            Bluthooth(),
            Usb()
          ]),
      
    );
  }
}
