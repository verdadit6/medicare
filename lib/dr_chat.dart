import 'package:flutter/material.dart';
import 'package:medicare/chats.dart';
import 'package:medicare/dr_msg.dart';
import 'package:medicare/home.dart';

class DrChat extends StatefulWidget {
  const DrChat({Key? key}) : super(key: key);

  @override
  _DrChatState createState() => _DrChatState();
}

class _DrChatState extends State<DrChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          backgroundColor: Colors.grey[850],
          leadingWidth: 100,
          centerTitle: true,
          title: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Dr.Anna Baker",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Row(
                    children: [
                      Container(
                        height: 8,
                        width: 8,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.lightGreenAccent[400],
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Online",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                width: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.deepPurpleAccent[100],
                      child: Icon(
                        Icons.video_call,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.deepPurpleAccent[100],
                      child: Icon(
                        Icons.call,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          leading: Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return Home(
                      selectedIndex: 2,
                    );
                  }));
                },
                icon: Icon(
                  Icons.navigate_before,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0J3UmFWmkCK1dScxjgh-2UXHB25ZLHkX9Lg&usqp=CAU",
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 20.0,
              bottom: 20.0,
              left: 30.0,
              right: 30.0,
            ),
            child: Container(
              height: 55,
              width: 360,
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent[100]!.withOpacity(0.3),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.timer,
                    color: Colors.deepPurpleAccent[100],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Sun,Jan 10,8:00am to 10:00am",
                    style: TextStyle(
                      color: Colors.deepPurpleAccent[100],
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10.0,
              bottom: 20.0,
              left: 20,
            ),
            child: Row(
              children: [
                DrMsg(
                  containerColor: Colors.grey[850],
                  topLeft: Radius.zero,
                  topRight: Radius.circular(20),
                  text: "Yes, what help do you need?",
                  time: "08:25",
                  width: 220,
                  height: 70,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10.0,
              bottom: 20.0,
              left: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                DrMsg(
                  containerColor: Colors.deepPurpleAccent[100],
                  topLeft: Radius.circular(20),
                  topRight: Radius.zero,
                  text: """Should i come to hospital 
tomorrow?""",
                  time: "08:30",
                  width: 220,
                  height: 75,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10.0,
              bottom: 20.0,
              left: 20,
            ),
            child: Row(
              children: [
                DrMsg(
                  containerColor: Colors.grey[850],
                  topRight: Radius.circular(20),
                  topLeft: Radius.zero,
                  text: """Yes sure, you can come after
 2:00 pm.""",
                  time: "08:35",
                  width: 220,
                  height: 75,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10.0,
              bottom: 20.0,
              left: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                DrMsg(
                  containerColor: Colors.deepPurpleAccent[100],
                  topLeft: Radius.circular(20),
                  topRight: Radius.zero,
                  text: "Sure,Thank you!!",
                  time: "08:40",
                  width: 220,
                  height: 60,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 55,
            width: 380,
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                hintText: "Type something...",
                hintStyle: TextStyle(color: Colors.grey),
                suffixIcon: Icon(
                  Icons.send,
                  color: Colors.deepPurpleAccent[100],
                ),
                filled: true,
                fillColor: Colors.grey[850],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
