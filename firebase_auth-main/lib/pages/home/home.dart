import 'package:auth_firebase/widgets/button.dart';
import 'package:auth_firebase/widgets/textfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _email = TextEditingController();
  final auth = FirebaseAuth.instance;

  void _showToast(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.black,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  @override
  void initState() {
    super.initState();
    auth.setLanguageCode('en');  // Setting default language code, if needed
  }

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
              controller: _email,
              hint: "Enter email",
              label: "Email",
            ),
            SizedBox(height: 20),
            CustomButton(
              label: "Send Email",
              onPressed: () {
                auth.sendPasswordResetEmail(email: _email.text.toString()).then((value) {
                  _showToast('Reset mail sent');
                }).catchError((error) {
                  _showToast(error.toString());
                });
              },
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
