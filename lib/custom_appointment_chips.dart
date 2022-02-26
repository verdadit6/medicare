import 'package:flutter/material.dart';

class AppointmentChip extends StatefulWidget {
  AppointmentChip({Key? key, this.day, this.date, this.height, this.width})
      : super(key: key);

  final String? day;
  final String? date;
  final double? height;
  final double? width;

  @override
  _AppointmentChipState createState() => _AppointmentChipState();
}

class _AppointmentChipState extends State<AppointmentChip> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ActionChip(
          side: BorderSide(color: Colors.grey[850]!),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          backgroundColor: isSelected == true
              ? Colors.deepPurpleAccent[100]
              : Colors.grey[850],
          label: Container(
            height: widget.height,
            width: widget.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.day!,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  widget.date!,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          onPressed: () {
            setState(() {
              isSelected = true;
            });
          }),
    );
  }
}
