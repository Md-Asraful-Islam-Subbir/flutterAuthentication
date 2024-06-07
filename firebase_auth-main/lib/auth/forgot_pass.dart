import 'package:auth_firebase/widgets/button.dart';
import 'package:auth_firebase/widgets/textfield.dart';
import 'package:flutter/material.dart';
class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Enter an email to send you a password reset link"),
            SizedBox(height: 20),
            CustomTextField(
              hint: "Enter email",
              label: "Email",
            ),
            SizedBox(height: 20),
            CustomButton(
              label: "Send Email",
              onPressed: () {
              },
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}