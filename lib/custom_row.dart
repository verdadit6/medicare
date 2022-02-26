import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  final IconData? icon;
  final String? text;
  CustomRow({Key? key, this.icon, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[850],
            ),
            child: Icon(
              icon,
              color: Colors.deepPurpleAccent[100],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text!,
            style: TextStyle(color: Colors.white),
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Icon(
                  Icons.navigate_next,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
