import 'package:flutter/material.dart';

class DrMsg extends StatelessWidget {
  final double? height;
  final double? width;
  final String? text;
  final String? time;
  final Radius? topRight;
  final Radius? topLeft;
  final Color? containerColor;
  const DrMsg({
    Key? key,
    this.height,
    this.width,
    this.text,
    this.time,
    this.topRight,
    this.topLeft,
    this.containerColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
          topRight: topRight!,
          topLeft: topLeft!,
        ),
        color: containerColor,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 15.0,
              left: 10.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  text!,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 8.0,
              right: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  time!,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
