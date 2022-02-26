import 'package:flutter/material.dart';

class CustomChip extends StatefulWidget {
  CustomChip({
    Key? key,
    this.chipName,
    this.icon,
  }) : super(key: key);

  final String? chipName;
  final IconData? icon;

  @override
  _CustomChipState createState() => _CustomChipState();
}

class _CustomChipState extends State<CustomChip> {
  bool isSelected = false;

  final Color color = Colors.deepPurpleAccent[100]!;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ActionChip(
        side: BorderSide(
          color: Colors.grey[850]!,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        backgroundColor:
            isSelected == true ? Colors.grey[850] : Colors.grey[900],
        label: SizedBox(
          height: 40,
          child: Row(
            children: [
              CircleAvatar(
                child: Icon(
                  widget.icon,
                  color: color,
                ),
                radius: 18,
                backgroundColor: Colors.grey[800],
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                widget.chipName!,
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
        },
      ),
    );
  }
}
