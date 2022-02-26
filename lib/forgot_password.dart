import 'package:flutter/material.dart';
import 'package:medicare/account_page.dart';
import 'package:medicare/custom_field.dart';

import 'custom_Elevated_button.dart';
import 'custom_text_button.dart';
import 'first_page.dart';

class ForgotPassword extends StatefulWidget {
  ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final Color? color = Colors.deepPurpleAccent[100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Column(
        children: [
          SizedBox(
            height: 270,
          ),
          CustomField(
            textColor: color,
            fillColor: color!.withOpacity(0.4),
            hintText: "Email Address",
            prefixIcon: Icons.email_outlined,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: CustomElevatedButton(
              backgroundColor: color,
              radius: 10,
              height: 55,
              width: 370,
              onPressed: () {},
              text: "Forgot Password",
            ),
          ),
          CustomTextButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return AccountPage();
              }));
            },
            decoration: TextDecoration.underline,
            textButtonName: "I haven't an account",
          ),
        ],
      ),
    );
  }
}
