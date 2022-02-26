import 'package:flutter/material.dart';

class CustomEvent extends StatelessWidget {
  final Color color = Colors.deepPurpleAccent[100]!;
  final String? date;
  final String? month;
  final String? drName;
  final String? speciality;
  final String? time;
  final IconData? icon;
  final Color? backgroundColor;

  CustomEvent({
    Key? key,
    this.date,
    this.month,
    this.drName,
    this.speciality,
    this.time,
    this.icon,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: color,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(10),
                  color: backgroundColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Text(
                        date!,
                        style: TextStyle(
                          color: color,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        month!,
                        style: TextStyle(
                          color: color,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Text(
                      speciality!,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Text(
                      time!,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Text(
                      drName!,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 40,
            ),
            Expanded(
              child: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.black,
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: 15,
                ),
              ),
            ),
          ],
        ),
        height: 100,
        width: 380,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey[800]!,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(15),
          color: Colors.grey[850],
        ),
      ),
    );
  }
}
