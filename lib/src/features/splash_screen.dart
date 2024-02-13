import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:radio_app/src/constants/app_colors.dart';
import 'package:radio_app/src/features/authentication/loginPage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    _navigateToLoginScreen();
  }

  // Function to navigate to the login screen after 5 seconds
  void _navigateToLoginScreen() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned.fill(
              child: Image.asset("assets/logos/dj_box_logo.png"),
            ),
            Center(
              child: Transform.translate(
                offset: Offset(0, -80),
                child: Image.asset(
                  "assets/logos/app_logo.png",
                  height: 140,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
