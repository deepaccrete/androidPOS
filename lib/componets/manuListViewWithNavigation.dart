import 'package:flutter/material.dart';

class MultipleListViewWithNavigation extends StatelessWidget {
  final String displayTitle;
  final VoidCallback onTap;
  final IconData? displayicon;
  final String? centerText;

  MultipleListViewWithNavigation({
    required this.displayTitle,
    this.displayicon,
    required this.onTap,
    this.centerText,

  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Card(
            elevation: 10,
            child: ListTile(
              
              title: Text(displayTitle),
              onTap: onTap,
              trailing: Icon(displayicon),
              
            ),
          ),
        ],
        ),
    );
  }
}

// class DecimalPointNavigation extends StatefulWidget {
//   @override
//   _decimalPointNavigationState createState() => _decimalPointNavigationState();
// }

// class _decimalPointNavigationState extends State<DecimalPointNavigation> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Row(children: [
//           Text('Decimal Point'),
//         ],)
//       ],
//     );
//   }
// }
