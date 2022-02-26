import 'package:flutter/material.dart';

class TimeChip extends StatefulWidget {
  bool? isSelected = false;

  final String? text;

  TimeChip({Key? key, this.text, this.isSelected}) : super(key: key);

  @override
  _TimeChipState createState() => _TimeChipState();
}

class _TimeChipState extends State<TimeChip> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 10.0,
        left: 10.0,
      ),
      child: ActionChip(
        onPressed: () {
          setState(() {
            widget.isSelected = true;
          });
        },
        side: BorderSide(color: Colors.grey[850]!),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        backgroundColor: widget.isSelected == true
            ? Colors.deepPurpleAccent[100]
            : Colors.grey[850],
        label: Container(
          height: 22,
          width: 63,
          child: Text(
            widget.text!,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
