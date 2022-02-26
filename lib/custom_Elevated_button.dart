import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String? text;
  final Color? color;
  final Color? backgroundColor;
  final void Function()? onPressed;
  final double? height;
  final double? width;
  final double? radius;
  const CustomElevatedButton({
    Key? key,
    this.text,
    this.color,
    this.backgroundColor,
    required this.onPressed,
    this.height,
    this.width,
    this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: backgroundColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius!))),
        onPressed: onPressed,
        child: Text(
          text!,
          style: TextStyle(
            color: color,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
