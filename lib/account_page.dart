import 'package:flutter/material.dart';

import 'custom_Elevated_button.dart';
import 'custom_field.dart';
import 'custom_text_button.dart';
import 'first_page.dart';
import 'forgot_password.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  final Color? color = Colors.deepPurpleAccent[100];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Column(
        children: [
          SizedBox(
            height: 150,
          ),
          CustomField(
            fillColor: color!.withOpacity(0.4),
            textColor: color,
            hintText: "Name",
            prefixIcon: Icons.account_box_outlined,
          ),
          CustomField(
            fillColor: color!.withOpacity(0.4),
            textColor: color,
            hintText: "Email Address",
            prefixIcon: Icons.email_outlined,
          ),
          CustomField(
            fillColor: color!.withOpacity(0.4),
            textColor: color,
            hintText: "Password",
            prefixIcon: Icons.lock_outlined,
            suffixIcon: Icons.remove_red_eye,
          ),
          Row(
            children: [
              SizedBox(
                width: 240,
              ),
              CustomTextButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return ForgotPassword();
                  }));
                },
                decoration: TextDecoration.none,
                textButtonName: "Forgot Password?",
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: CustomElevatedButton(
              backgroundColor: color,
              radius: 10,
              height: 55,
              width: 370,
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return FirstPage();
                }));
              },
              text: "Create an Account",
            ),
          ),
          CustomTextButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return ForgotPassword();
                }));
              },
              decoration: TextDecoration.underline,
              textButtonName: "I have already an account"),
        ],
      ),
    );
  }
}
