import 'package:flutter/material.dart';

class Dropdown extends StatefulWidget {
  final List<String> items;
  final String selectedItem;
  final Function(String) onChanged;
  final String? hintText;

  Dropdown({
    required this.items,
    required this.selectedItem,
    required this.onChanged,
    this.hintText,
  });

  @override
  State<Dropdown> createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  late String _selectedValue;

  @override
  void initState() {
    super.initState();
    _selectedValue = widget.selectedItem;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton<String>(
        value: _selectedValue,
        items: widget.items.map((String item) {
          return DropdownMenuItem<String>(
            value: item,
            child: Text(item),
          );
        }).toList(),
        onChanged: (String? value) {
          if (value != null) {
            setState(() {
              _selectedValue = value;
            });
            widget.onChanged(value); // ✅ Calls the callback to update parent widget
          }
        },
      ),
    );
  }
}
