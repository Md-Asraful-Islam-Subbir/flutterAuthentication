import 'package:auth_firebase/auth/auth_service.dart';
import 'package:auth_firebase/auth/login_screen.dart';
import 'package:auth_firebase/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:auth_firebase/pages/home/home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final auth = AuthService();
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/background.png'), 
          ),
        ),
        child: Stack(
          children: [
            // Centered content
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Welcome User !!",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(height: 20),
                  Image.asset(
                    'assets/logo.png', 
                    width: 100,
                    height: 100, 
                  ),
                  CustomButton(
                    label: "Sign Out",
                    onPressed: () async {
                      await auth.signout();
                      goToLogin(context);
                    }, color: Colors.orange,
                  ),
                ],
              ),
            ),
            // Continue button at the bottom right corner
            Positioned(
  bottom: 20,
  right: 20,
  child: IconButton(
    icon: const Icon(Icons.arrow_forward), // Replace this with your desired icon
    onPressed: () {
      goToNextPage(context);
    },
    color: Colors.blue,
    iconSize: 32, // Adjust the size of the icon as needed
  ),
),

          ],
        ),
      ),
    );
  }

  goToLogin(BuildContext context) => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );

  goToNextPage(BuildContext context) {
    // Implement your navigation to the next page here
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Home()),
    );
  }
}

