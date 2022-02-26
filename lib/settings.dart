import 'package:flutter/material.dart';
import 'package:medicare/chats.dart';
import 'package:medicare/custom_row.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  Color color = Colors.deepPurpleAccent[100]!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 10.0,
              top: 10,
            ),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.navigate_before,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYcPtSp06QuRN7aVsFxmRyBzvq2N2r23hZwev6fEcSnFNZ6tU5Jav2ggS9qynwfbWO0cc&usqp=CAU",
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              "Bessie Cooper",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: color,
                  ),
                ),
              ),
              Text(
                "Premium (9 days)",
                style: TextStyle(
                  color: color,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "General",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          CustomRow(
            icon: Icons.payment,
            text: "Subscription & Payment",
          ),
          CustomRow(
            icon: Icons.account_box_outlined,
            text: "Profile Settings",
          ),
          CustomRow(
            icon: Icons.lock_outlined,
            text: "Password",
          ),
          CustomRow(
            icon: Icons.notifications_outlined,
            text: "Notifications",
          ),
          CustomRow(
            icon: Icons.logout,
            text: "Logout",
          ),
        ],
      ),
    );
  }
}
