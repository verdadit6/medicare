import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String? textButtonName;
  final void Function()? onPressed;
  final TextDecoration? decoration;
  const CustomTextButton({
    Key? key,
    this.textButtonName,
    required this.onPressed,
    this.decoration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        textButtonName!,
        style: TextStyle(
          decoration: decoration,
          color: Colors.deepPurpleAccent[100],
          fontSize: 15,
        ),
      ),
    );
  }
}
