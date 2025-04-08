import 'package:flutter/material.dart';
import 'package:foodchow/componets/togglelist.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomizationPrinter extends StatefulWidget {
  const CustomizationPrinter({super.key});

  @override
  State<CustomizationPrinter> createState() => _CustomizationPrinterState();
}

class _CustomizationPrinterState extends State<CustomizationPrinter> {
  Map<String, bool> switchValues = {
    "Order ID": true,
    "Restaurant Name": true,
    "Restaurant Address": false,
    "Restaurant Mobile No": false,
    "Website Name": true,
    "Ordered Time": true,
    "Customer Name": true,
    "Order Type": true,
    "Payment Type": true,
    "Tax": true,
    "Subtotal": true,
    "Payment Paid": true,
    "Powered By": true,
    "Custom Field": true,
    "Extra Info": true,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Customize Your Printer',
          style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: switchValues.entries.map((entry) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: SwitchList(
                title: entry.key,
                isvalue: entry.value,
                onChanged: (bool newValue) {
                  setState(() {
                    switchValues[entry.key] = newValue;
                  });
                },
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
