import 'package:flutter/material.dart';
import 'package:medicare/custom_Elevated_button.dart';
import 'package:medicare/custom_field.dart';
import 'package:medicare/custom_text_button.dart';
import 'package:medicare/forgot_password.dart';
import 'package:medicare/home.dart';

import 'account_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final Color? color = Colors.deepPurpleAccent[100];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Column(
        children: [
          SizedBox(
            height: 220,
          ),
          CustomField(
            textColor: color,
            fillColor: color!.withOpacity(0.4),
            hintText: "Email Address",
            prefixIcon: Icons.email_outlined,
          ),
          CustomField(
            textColor: color,
            fillColor: color!.withOpacity(0.4),
            hintText: "Password",
            prefixIcon: Icons.lock_outlined,
            suffixIcon: Icons.remove_red_eye,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 220,
            ),
            child: CustomTextButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return ForgotPassword();
                }));
              },
              decoration: TextDecoration.none,
              textButtonName: "Forgot Password?",
            ),
          ),
          CustomElevatedButton(
            backgroundColor: color,
            radius: 10,
            height: 50,
            width: 370,
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return Home(selectedIndex: 0);
              }));
            },
            text: "LOG IN",
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: CustomTextButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return AccountPage();
                }));
              },
              decoration: TextDecoration.underline,
              textButtonName: "I haven't an account",
            ),
          ),
        ],
      ),
    );
  }
}
