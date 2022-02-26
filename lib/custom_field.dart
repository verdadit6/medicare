import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  final String? hintText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final Color? fillColor;
  final Color? textColor;
  final double? fontSize;

  CustomField({
    Key? key,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.fillColor,
    this.textColor,
    this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20.0,
        right: 20,
        bottom: 10,
        top: 10,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          fillColor: fillColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          prefixIcon: Icon(
            prefixIcon,
            color: Colors.deepPurpleAccent[100],
          ),
          suffixIcon: Icon(
            suffixIcon,
            color: Colors.deepPurpleAccent[100],
          ),
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(
            color: textColor,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
