import 'package:flutter/material.dart';
import 'package:medicare/custom_chat.dart';
import 'package:medicare/custom_field.dart';

import 'dr_chat.dart';

class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  final Color color = Colors.deepPurpleAccent[100]!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              "Chats",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            CustomField(
              fillColor: color.withOpacity(0.4),
              suffixIcon: Icons.search,
              textColor: Colors.white,
              hintText: "search, e.g.Dr",
            ),
            CustomChat(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return DrChat();
                }));
              },
              widget: Container(
                child: Center(
                  child: Text(
                    "2",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: color,
                ),
              ),
              url:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0J3UmFWmkCK1dScxjgh-2UXHB25ZLHkX9Lg&usqp=CAU",
              drName: "Dr.John Rodriguez",
              time: "14:22 am",
              question: "Hello, how can I help you?",
            ),
            CustomChat(
              widget: Container(),
              url:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2wNCR0GoP5tlnAzCjUHMeevYSOX51OHDd9g&usqp=CAU",
              drName: "Dr.Elizabeth Scott",
              time: "05:25 pm",
              question: "Thank you for visiting",
            ),
            CustomChat(
              url:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReWvKbw5exJKv2l8p8YoIXCQhzk_f1ZpI44Q&usqp=CAU",
              drName: "Dr.Miguel Johnson",
              time: "12:32 am",
              question: "What was your last meal?",
              widget: Container(
                child: Center(
                  child: Text(
                    "1",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: color,
                ),
              ),
            ),
            CustomChat(
              widget: Container(),
              url:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScKfRFprlq6fBDRlTsIGkH-JqrUsJ8Ps6wtw&usqp=CAU",
              drName: "Dr.Sarah Palson",
              time: "07:56 am",
              question: "I have a bad headache",
            ),
            CustomChat(
              widget: Container(),
              url:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQufF8Jg7dh4bYsNhPGwsC5cREe-fHbTjB6HQ&usqp=CAU",
              drName: "Dr.Anna Handy",
              time: "16:45 am",
              question: "Hello,how can I help you?",
            ),
          ],
        ),
      ),
    );
  }
}
