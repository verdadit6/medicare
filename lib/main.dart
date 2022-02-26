import 'package:flutter/material.dart';
import 'package:medicare/custom_Elevated_button.dart';

import 'account_page.dart';
import 'login_page.dart';

void main() {
  runApp(Medicare());
}

class Medicare extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final Color? color = Colors.deepPurpleAccent[100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(70.0),
            child: Text(
              "Welcome to medicare",
              style: TextStyle(
                color: color,
                fontSize: 28,
              ),
            ),
          ),
          Container(
            height: 400,
            width: 350,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("asset/Untitled.png"),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 40, bottom: 20, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomElevatedButton(
                  height: 40,
                  radius: 8,
                  width: 170,
                  backgroundColor: Colors.grey[900],
                  color: color,
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return AccountPage();
                    }));
                  },
                  text: "Sign Up",
                ),
                SizedBox(
                  width: 20,
                ),
                CustomElevatedButton(
                  radius: 8,
                  height: 40,
                  width: 170,
                  backgroundColor: color,
                  color: Colors.white,
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return LoginPage();
                    }));
                  },
                  text: "Log in",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
