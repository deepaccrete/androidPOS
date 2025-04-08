import 'package:flutter/material.dart';

class ToggleSwitch extends StatefulWidget {
  final bool initialValue;
  final bool? showBorder;
  final String? label;
  final double? widthc;
  // User-provided label text
  const ToggleSwitch({
    Key? key,
    required this.initialValue,
    this.label,
    this.widthc,
    this.showBorder = false,
  }) : super(key: key);

  @override
  _CustomToggleSwitchState createState() => _CustomToggleSwitchState();
}

class _CustomToggleSwitchState extends State<ToggleSwitch> {
  late bool _isOn;

  @override
  void initState() {
    super.initState();
    _isOn = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width * 1;
    final screenheight = MediaQuery.of(context).size.height * 1;
    return Container(
      width: screenWidth * (widget.widthc ?? 0.3),
      padding: EdgeInsets.all(10),
      // margin: EdgeInsets.symmetric( horizontal:20,vertical: 10),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Text(
            widget.label ?? '', // Label from constructor
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(width: 10),
          Container(
            padding: const EdgeInsets.all(2),
            decoration: widget.showBorder == true
                ? BoxDecoration(
                    color: Colors
                        .white, // Add background color so border is visible
                    border: Border.all(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.circular(20),
                  )
                : null,
            child: Switch(
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              value: _isOn,
              onChanged: (value) {
                setState(() {
                  _isOn = value;
                });
              },
              activeColor: Colors.green,
              inactiveTrackColor: Colors.grey.shade400,
              thumbColor: WidgetStateProperty.resolveWith<Color>(
                (Set<WidgetState> states) => Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
